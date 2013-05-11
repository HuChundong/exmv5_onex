.class public Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
.super Ljava/lang/Object;
.source "IidaAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/iida/widget/IidaAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 364
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    .line 366
    return-void
.end method


# virtual methods
.method public create()Lcom/kddi/android/iida/widget/IidaAlertDialog;
    .locals 3

    .prologue
    .line 943
    new-instance v0, Lcom/kddi/android/iida/widget/IidaAlertDialog;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kddi/android/iida/widget/IidaAlertDialog;-><init>(Landroid/content/Context;)V

    .line 944
    .local v0, dialog:Lcom/kddi/android/iida/widget/IidaAlertDialog;
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v2, v0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v1, v2}, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->apply(Lcom/kddi/android/iida/widget/IidaAlertController;)V

    .line 945
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setCancelable(Z)V

    .line 946
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 947
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 950
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 953
    :cond_1
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 636
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 637
    return-object p0
.end method

.method public setCancelable(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCancelable:Z

    .line 576
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 655
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 657
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 401
    return-object p0
.end method

.method public setIcon(I)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIconId:I

    .line 439
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 449
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mForceInverseBackground:Z

    .line 906
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 608
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 609
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 620
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 621
    return-object p0
.end method

.method public setMessage(I)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 411
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 421
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 427
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAutoLinkMask:I

    .line 428
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 681
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 682
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItems:[Z

    .line 683
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsMultiChoice:Z

    .line 684
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 735
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p4, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 736
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsMultiChoice:Z

    .line 739
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 707
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 708
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItems:[Z

    .line 709
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsMultiChoice:Z

    .line 710
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 526
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 527
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 539
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 540
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 500
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 552
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 553
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 565
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 566
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 488
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 587
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 846
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 597
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 461
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 462
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 513
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 514
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 476
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 760
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 761
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItem:I

    .line 762
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsSingleChoice:Z

    .line 763
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 785
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p4, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 786
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItem:I

    .line 787
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsSingleChoice:Z

    .line 789
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 830
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 831
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItem:I

    .line 832
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsSingleChoice:Z

    .line 833
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 808
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 809
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItem:I

    .line 810
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mIsSingleChoice:Z

    .line 811
    return-object p0
.end method

.method public setTitle(I)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v1, v1, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 375
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 385
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitleCenter:Z

    .line 932
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mTitleDivider:Z

    .line 920
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mView:Landroid/view/View;

    .line 859
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 860
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mView:Landroid/view/View;

    .line 888
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 889
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p2, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingLeft:I

    .line 890
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p3, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingTop:I

    .line 891
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p4, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingRight:I

    .line 892
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->P:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput p5, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mViewSpacingBottom:I

    .line 893
    return-object p0
.end method

.method public show()Lcom/kddi/android/iida/widget/IidaAlertDialog;
    .locals 1

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;->create()Lcom/kddi/android/iida/widget/IidaAlertDialog;

    move-result-object v0

    .line 962
    .local v0, dialog:Lcom/kddi/android/iida/widget/IidaAlertDialog;
    invoke-virtual {v0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->show()V

    .line 963
    return-object v0
.end method
