.class Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;

.field private itemLeftMargin:I

.field private itemRightMargin:I

.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter
    .parameter "menu"

    .prologue
    const/high16 v1, -0x8000

    .line 468
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 466
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 498
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    .line 499
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 469
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 578
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 579
    .local v1, expandedItem:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 580
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 581
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 582
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 583
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 584
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 585
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 591
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 582
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 476
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 479
    :goto_1
    return v1

    .line 474
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 479
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 485
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 486
    add-int/lit8 p1, p1, 0x1

    .line 488
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 483
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 494
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 504
    if-nez p2, :cond_0

    .line 505
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x109007c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 509
    :cond_0
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v7}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 510
    instance-of v7, p2, Lcom/android/internal/view/menu/ListMenuItemView;

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 511
    check-cast v7, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 512
    .local v6, temp:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 514
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    const/high16 v8, -0x8000

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    const/high16 v8, -0x8000

    if-ne v7, v8, :cond_2

    .line 516
    :cond_1
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 517
    .local v4, resource:Landroid/content/res/Resources;
    const v7, 0x40a0007

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    .line 518
    const v7, 0x40a0007

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    .line 521
    .end local v4           #resource:Landroid/content/res/Resources;
    :cond_2
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    if-lez v7, :cond_3

    if-eqz v2, :cond_3

    .line 522
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 524
    :cond_3
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    if-lez v7, :cond_4

    if-eqz v2, :cond_4

    .line 525
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_4
    move-object v7, p2

    .line 528
    check-cast v7, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ListMenuItemView;->enableHtcStyle(Z)V

    .end local v2           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #temp:Landroid/view/View;
    :cond_5
    move-object v1, p2

    .line 532
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 533
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-boolean v7, v7, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v7, :cond_6

    move-object v7, p2

    .line 534
    check-cast v7, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 536
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 538
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v7}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    check-cast v7, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ListMenuItemView;->showsIcon()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 539
    check-cast v7, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 541
    const v7, 0x1020006

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 543
    .local v0, iconView:Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_7

    .line 544
    const/high16 v7, 0x3f80

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 555
    .end local v0           #iconView:Landroid/view/View;
    :cond_7
    :goto_0
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v7}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 558
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-nez v7, :cond_8

    .line 560
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 562
    .restart local v4       #resource:Landroid/content/res/Resources;
    const-string v7, "darklist_primary"

    const-string v8, "color"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 564
    .local v5, resourceID:I
    if-eqz v5, :cond_8

    .line 565
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 568
    .end local v4           #resource:Landroid/content/res/Resources;
    .end local v5           #resourceID:I
    :cond_8
    const v7, 0x1020016

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 570
    .local v3, mTitleView:Landroid/widget/TextView;
    if-eqz v3, :cond_9

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_9

    .line 571
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 574
    .end local v3           #mTitleView:Landroid/widget/TextView;
    :cond_9
    return-object p2

    .line 547
    :cond_a
    const v7, 0x1020006

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 549
    .restart local v0       #iconView:Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    const v8, 0x3ecccccd

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_7

    .line 550
    const v7, 0x3ecccccd

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 597
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 598
    return-void
.end method
