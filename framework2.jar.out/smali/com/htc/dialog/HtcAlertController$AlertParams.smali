.class public Lcom/htc/dialog/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoLinkMask:I

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDefaultIcon:Z

.field public mForceInverseBackground:Z

.field public mHtcContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsAutoMotive:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mTitleDivider:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I

.field private methodSetText:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 1258
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1278
    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1304
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1339
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1344
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1349
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mDefaultIcon:Z

    .line 1355
    iput v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 1361
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    .line 1643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    .line 1380
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1381
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    .line 1382
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    .line 1383
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1384
    return-void
.end method

.method static synthetic access$800(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1121
    invoke-direct {p0, p1, p2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->setListItemText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createListView(Lcom/htc/dialog/HtcAlertController;)V
    .locals 13
    .parameter "dialog"

    .prologue
    .line 1472
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090084

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1473
    .local v6, listView:Landroid/widget/ListView;
    if-nez v6, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1476
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1477
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 1478
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1481
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    .line 1482
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 1483
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1600
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_1

    .line 1601
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1607
    :cond_1
    #setter for: Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/htc/dialog/HtcAlertController;->access$902(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1608
    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/htc/dialog/HtcAlertController;->access$1002(Lcom/htc/dialog/HtcAlertController;I)I

    .line 1610
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1611
    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$5;

    invoke-direct {v1, p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$5;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1632
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_3

    .line 1633
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1636
    :cond_3
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1637
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1641
    :cond_4
    :goto_3
    #setter for: Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/htc/dialog/HtcAlertController;->access$1102(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    goto :goto_0

    .line 1510
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1543
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_6
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 1544
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_1

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_7
    new-instance v7, Lcom/htc/dialog/HtcAlertController$AlertParams$3;

    iget-object v9, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v0, v7

    goto :goto_4

    .line 1569
    :cond_8
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1619
    :cond_9
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_2

    .line 1620
    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$6;

    invoke-direct {v1, p0, v6, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$6;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1638
    :cond_a
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4

    .line 1639
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_3
.end method

.method private setListItemText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "view"
    .parameter "text"

    .prologue
    .line 1646
    :try_start_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 1647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1648
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v2, "setText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    .line 1650
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1658
    :goto_0
    return-void

    .line 1651
    :catch_0
    move-exception v1

    .line 1652
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "HtcAlertDialog@frameworkTie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setListItemText: view.class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1653
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1654
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v2, "HtcAlertDialog@frameworkTie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setListItemText: view.class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1655
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1656
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "HtcAlertDialog@frameworkTie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setListItemText: view.class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/htc/dialog/HtcAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1393
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    .line 1394
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIsAutoMotive(Z)V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1398
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1410
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1412
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_10

    .line 1413
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1418
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1422
    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1423
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1426
    :cond_4
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1427
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1431
    :cond_5
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1432
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1434
    :cond_6
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1435
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1437
    :cond_7
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_8

    .line 1438
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1441
    :cond_8
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    if-nez v0, :cond_9

    .line 1442
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 1446
    :cond_9
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 1447
    :cond_a
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V

    .line 1449
    :cond_b
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1450
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_11

    .line 1451
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 1458
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleDividerVisible(Z)V

    .line 1459
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    .line 1468
    return-void

    .line 1400
    :cond_d
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 1401
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1403
    :cond_e
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 1404
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    :cond_f
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_1

    .line 1407
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1415
    :cond_10
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1454
    :cond_11
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
