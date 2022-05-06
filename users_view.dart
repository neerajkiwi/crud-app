import 'package:flutter/material.dart';

//import 'package:login_sharedprefernece/user.dart';
//import 'package:login_sharedprefernece/user.dart';
import 'package:provider/provider.dart';
import 'package:login_sharedprefernece/providers/user_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

List ulist = [];

class UsersView extends StatefulWidget {
  const UsersView({Key? key}) : super(key: key);

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    ulist = context.read<UserProvider>().getUser;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: ulist.length,
          itemBuilder: (context, i) => Column(
                children: [
                  const Divider(
                    height: 10.0,
                  ),
                  Slidable(
                    key: const ValueKey(1),
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      //dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        // A SlidableAction can have an icon and/or a label.
                        SlidableAction(
                          onPressed: (context){
                              context.read<UserProvider>().deleteItem(i);
                                  },
                          // onPressed: (context) {
                          //   setState(() {
                          //     ulist.removeAt(i);
                          //   });
                          // },
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        const SlidableAction(
                          onPressed: null,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.edit,
                          label: 'Edit',
                        ),
                      ],
                    ),
                    endActionPane: const ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          // An action can be bigger than the others.

                          onPressed: null,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.block,
                          label: 'Block',
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            NetworkImage(ulist[i]['url'], scale: 1.0),
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          ulist[i]['name'].toString(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
    );
  }

   void updateItem(int i){
       context.read<UserProvider>().deleteItem(i);

  }

}
