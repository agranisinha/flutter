ScrollController _scrollController = ScrollController();
  _itemBuilder = ListViewItemBuilder(
        // If you want use [jumpTo] or [animateTo], need set scrollController.
        scrollController:_scrollController,
        rowCountBuilder: (section) => 10,
        itemsBuilder: (BuildContext context, int section, int index) {
                    return Container(
                           height: 44,
                           child: Text('item:${section.toString()}+${index.toString()}'),
                           );
                    },
        );

  ListView.builder(
      itemBuilder: _itemBuilder.itemBuilder,
      itemCount: _itemBuilder.itemCount,
      controller: _scrollController,
    );

  // jumpTo:
  _itemBuilder.jumpTo(int section, int index, {ListViewItemPosition position = ListViewItemPosition.top})

  // animateTo:
  _itemBuilder.animateTo(int section, int index,
      {@required Duration duration,
      @required Curve curve,
      ListViewItemPosition position = ListViewItemPosition.top})