.class Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;,
        Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreDialogAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;

.field private mOnToggleChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 592
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$1;-><init>(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mOnToggleChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;

    .line 470
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mContext:Landroid/content/Context;

    .line 471
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 472
    iput-object p2, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mListener:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 490
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 503
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 520
    const-string v6, "MoreDialogAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView() pos "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v0, 0x0

    .line 526
    .local v0, holder:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 527
    .local v3, res:Landroid/content/res/Resources;
    if-nez v3, :cond_0

    .line 529
    const-string v6, "MoreDialogAdapter"

    const-string v7, "[getView] res is null"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-object v5

    .line 533
    :cond_0
    if-nez p2, :cond_1

    .line 535
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x603000b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 536
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;

    .end local v0           #holder:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;-><init>()V

    .line 537
    .restart local v0       #holder:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;
    const v6, 0x60b0035

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 538
    .local v1, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v6, 0x60b0036

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 539
    .local v2, menuText:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x60b0037

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcToggleButtonLight;

    .line 540
    .local v4, toggle:Lcom/htc/widget/HtcToggleButtonLight;
    iput-object v1, v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 541
    iput-object v2, v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;->menuText:Lcom/htc/widget/HtcListItem2LineText;

    .line 542
    iput-object v4, v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;->togglebtn:Lcom/htc/widget/HtcToggleButtonLight;

    .line 543
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 553
    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 556
    const v5, 0x2030016

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 558
    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcToggleButtonLight;->setMode(I)V

    .line 559
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getImageRes()I

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getImageRes()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 562
    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 569
    :goto_2
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 571
    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    .line 572
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleState()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 573
    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setId(I)V

    .line 574
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mOnToggleChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 579
    :goto_3
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 580
    invoke-virtual {p2, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 584
    :goto_4
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 585
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    move-object v5, p2

    .line 589
    goto/16 :goto_0

    .line 547
    .end local v1           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v2           #menuText:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #toggle:Lcom/htc/widget/HtcToggleButtonLight;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;
    check-cast v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;

    .line 548
    .restart local v0       #holder:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;
    iget-object v1, v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 549
    .restart local v1       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v2, v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;->menuText:Lcom/htc/widget/HtcListItem2LineText;

    .line 550
    .restart local v2       #menuText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v4, v0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$ViewHolder;->togglebtn:Lcom/htc/widget/HtcToggleButtonLight;

    .restart local v4       #toggle:Lcom/htc/widget/HtcToggleButtonLight;
    goto/16 :goto_1

    .line 566
    :cond_2
    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_2

    .line 577
    :cond_3
    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    goto :goto_3

    .line 582
    :cond_4
    invoke-virtual {p2, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 587
    :cond_5
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mListener:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;

    .line 483
    return-void
.end method
