// ignore_for_file: file_names

part of '../shared/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildHomeScreen();
  }

  Widget _buildHomeScreen() {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('My Notes',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600, color: Colors.black)),
          leading: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Icon(Icons.format_align_left, color: Colors.black)),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.search, color: Colors.black))
          ]),
      body: _buildNotesList(),
    );
  }

  Widget _buildNotesList() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey,
                ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return _buildNotesItem();
            }),
      ),
    );
  }

  Widget _buildNotesItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "Notes from UI events",
                      style: GoogleFonts.openSans(
                          color: Colors.black, fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'This notice means that students in class are not allowed to use cell phones in class. Although word',
                        style: GoogleFonts.openSans(
                            color: Colors.grey, fontSize: 14),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.star, size: 20),
                          Icon(Icons.more_vert, size: 20),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '22 June 2022',
                            style: GoogleFonts.openSans(
                                color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
