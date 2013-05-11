.class public Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;
.super Ljava/lang/Object;
.source "IidaAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/iida/widget/IidaAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$OnPrepareListViewListener;
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

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

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

.field public mOnPrepareListViewListener:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$OnPrepareListViewListener;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIconId:I

    .line 1125
    iput-boolean v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1141
    iput v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItem:I

    .line 1162
    iput-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1193
    iput-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitleDivider:Z

    .line 1197
    iput-boolean v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitleCenter:Z

    .line 1201
    iput-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mDefaultIcon:Z

    .line 1207
    iput v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAutoLinkMask:I

    .line 1226
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1227
    iput-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCancelable:Z

    .line 1228
    return-void
.end method

.method private createListView(Lcom/kddi/android/iida/widget/IidaAlertController;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1305
    #calls: Lcom/kddi/android/iida/widget/IidaAlertController;->createListView()Landroid/widget/ListView;
    invoke-static {p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$800(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/ListView;

    move-result-object v1

    .line 1306
    .local v1, listView:Landroid/widget/ListView;
    if-nez v1, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1308
    :cond_0
    const/4 v0, 0x0

    .line 1310
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1311
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 1312
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1317
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1322
    :cond_1
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_2

    .line 1323
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v2, v1}, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1329
    :cond_2
    #setter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$902(Lcom/kddi/android/iida/widget/IidaAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1330
    iget v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mCheckedItem:I
    invoke-static {p1, v2}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$1002(Lcom/kddi/android/iida/widget/IidaAlertController;I)I

    .line 1332
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_6

    .line 1333
    new-instance v2, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;

    invoke-direct {v2, p0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$1;-><init>(Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;Lcom/kddi/android/iida/widget/IidaAlertController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1354
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_4

    .line 1355
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1358
    :cond_4
    iget-boolean v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_7

    .line 1359
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1363
    :cond_5
    :goto_2
    #setter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$1102(Lcom/kddi/android/iida/widget/IidaAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    goto :goto_0

    .line 1341
    :cond_6
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_3

    .line 1342
    new-instance v2, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;-><init>(Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;Landroid/widget/ListView;Lcom/kddi/android/iida/widget/IidaAlertController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1360
    :cond_7
    iget-boolean v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_5

    .line 1361
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/kddi/android/iida/widget/IidaAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1236
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1237
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1249
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1251
    iget v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_f

    .line 1252
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1257
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1262
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1265
    :cond_3
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1270
    :cond_4
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_5

    .line 1271
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButtonDisabled(IZ)V

    .line 1273
    :cond_5
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1274
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButtonDisabled(IZ)V

    .line 1276
    :cond_6
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1277
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButtonDisabled(IZ)V

    .line 1280
    :cond_7
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mForceInverseBackground:Z

    if-nez v0, :cond_8

    .line 1281
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setInverseBackgroundForced(Z)V

    .line 1285
    :cond_8
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 1286
    :cond_9
    invoke-direct {p0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->createListView(Lcom/kddi/android/iida/widget/IidaAlertController;)V

    .line 1288
    :cond_a
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1289
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_10

    .line 1290
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kddi/android/iida/widget/IidaAlertController;->setView(Landroid/view/View;IIII)V

    .line 1297
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setTitleDividerVisible(Z)V

    .line 1298
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setTitleCenterEnabled(Z)V

    .line 1301
    return-void

    .line 1239
    :cond_c
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1240
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1242
    :cond_d
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1243
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    :cond_e
    iget v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 1246
    iget v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1254
    :cond_f
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1293
    :cond_10
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
