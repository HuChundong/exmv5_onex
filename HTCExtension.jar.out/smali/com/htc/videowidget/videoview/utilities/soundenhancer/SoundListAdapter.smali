.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;,
        Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundEffectAdapter"

.field private static mShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ID_LISTITEM_ICON:I

.field private final ID_LISTITEM_RADIO:I

.field private final ID_LISTITEM_TEXT:I

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListVisibleCount:I

.field private mSelectedHolder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, _items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;>;"
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mSelectedHolder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;

    .line 64
    const v0, 0x3ade68b1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->ID_LISTITEM_ICON:I

    .line 65
    const v0, 0x3ade68b2

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->ID_LISTITEM_TEXT:I

    .line 66
    const v0, 0x3ade68b3

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->ID_LISTITEM_RADIO:I

    .line 58
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->refineList()V

    .line 62
    return-void
.end method

.method public static getRealListPos(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 237
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 242
    .local v0, realPos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private initConvertView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .parameter "context"

    .prologue
    .line 70
    new-instance v1, Lcom/htc/widget/HtcListItem;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, listView:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    .line 74
    .local v2, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Lcom/htc/widget/HtcListItemColorIcon;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v5, 0x3ade68b1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setId(I)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 80
    new-instance v4, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v4, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 81
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x3ade68b2

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setId(I)V

    .line 82
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 84
    new-instance v3, Lcom/htc/widget/HtcRadioButton;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcRadioButton;-><init>(Landroid/content/Context;)V

    .line 85
    .local v3, radio:Lcom/htc/widget/HtcRadioButton;
    const v5, 0x3ade68b3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcRadioButton;->setId(I)V

    .line 86
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 88
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    iget v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mListVisibleCount:I

    if-ge v1, v0, :cond_0

    .line 175
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mListVisibleCount:I

    .line 177
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->getRealListPos(I)I

    move-result v0

    .line 183
    .local v0, realListPos:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->getRealListPos(I)I

    move-result v0

    .line 198
    .local v0, realListPos:I
    if-gez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->getRealListPos(I)I

    move-result v3

    .line 95
    .local v3, realListPos:I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v0, p2

    .line 164
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 100
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    .line 103
    .local v2, item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    if-nez p2, :cond_2

    .line 105
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->initConvertView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;)V

    .line 108
    .local v1, holder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;
    const v4, 0x3ade68b1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 109
    const v4, 0x3ade68b2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 110
    const v4, 0x3ade68b3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcRadioButton;

    iput-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    .line 111
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRadioButton;->setFocusable(Z)V

    .line 112
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_1
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v4, :cond_4

    iget v4, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    if-lez v4, :cond_4

    .line 123
    iget-boolean v4, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsIconVisible:Z

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget v5, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 126
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 139
    :goto_2
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 140
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 141
    iget-boolean v4, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    if-eqz v4, :cond_5

    .line 143
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setEnabled(Z)V

    .line 144
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 145
    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    :goto_3
    iget-boolean v4, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    if-eqz v4, :cond_6

    .line 155
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 156
    new-instance v4, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;

    invoke-direct {v4, p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;)V

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mSelectedHolder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;

    .line 157
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mSelectedHolder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;

    iget-object v5, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    iput-object v5, v4, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;->checked:Lcom/htc/widget/HtcRadioButton;

    .line 158
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mSelectedHolder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;

    iput-object v2, v4, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;->item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    :goto_4
    move-object v0, p2

    .line 164
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 117
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #holder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;
    goto :goto_1

    .line 130
    :cond_3
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_2

    .line 135
    :cond_4
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_2

    .line 149
    :cond_5
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setEnabled(Z)V

    .line 150
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 151
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 162
    :cond_6
    iget-object v4, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_4
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->refineList()V

    .line 209
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 210
    return-void
.end method

.method public refineList()V
    .locals 5

    .prologue
    .line 214
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 215
    .local v1, listLen:I
    if-gtz v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v2, 0x0

    .line 220
    .local v2, visibleCount:I
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 223
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 225
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    iget-boolean v3, v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsVisible:Z

    if-eqz v3, :cond_2

    .line 227
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mShowList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v2, v2, 0x1

    .line 223
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_3
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->mListVisibleCount:I

    goto :goto_0
.end method
