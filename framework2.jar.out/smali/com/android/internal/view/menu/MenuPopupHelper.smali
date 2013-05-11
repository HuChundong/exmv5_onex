.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x109007c

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private enableCloseAnimation:Z

.field private enableHtcPopup:Z

.field private htcPopupWindowWidth:I

.field private mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableCloseAnimation:Z

    .line 84
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 109
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 112
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, 0x1050007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 118
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 120
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v8, 0x0

    .line 321
    const/4 v6, 0x0

    .line 322
    .local v6, width:I
    const/4 v4, 0x0

    .line 323
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 324
    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 326
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 328
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 329
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 330
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 331
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 332
    move v3, v5

    .line 333
    const/4 v4, 0x0

    .line 335
    :cond_0
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 336
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 338
    :cond_1
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 340
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v5           #positionType:I
    :cond_2
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableCloseAnimation:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->internalDismiss()V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->dismissWithoutAnimation()V

    goto :goto_0
.end method

.method public enableHtcPopup(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x40a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    .line 91
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    .line 92
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 382
    return-void
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    if-eqz v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 299
    goto :goto_0

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMultiplyForceEnabled(Z)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/menu/OverflowMenuView;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/OverflowMenuView;->setMultiplyForceEnabled(Z)V

    .line 285
    :cond_1
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    .line 287
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 288
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 289
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 292
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 295
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 349
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 364
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 351
    .restart local v0       #anchor:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    if-eqz v1, :cond_3

    .line 356
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 308
    .local v0, adapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 309
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 462
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 8
    .parameter "subMenu"

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 402
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 403
    .local v4, subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, preserveIconSpacing:Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 407
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 408
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 409
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 410
    const/4 v3, 0x1

    .line 414
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 416
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 418
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 420
    :cond_1
    const/4 v5, 0x1

    .line 423
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_2
    return v5

    .line 407
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #preserveIconSpacing:Z
    .restart local v4       #subPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 368
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 376
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 377
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 125
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 397
    return-void
.end method

.method public setCloseAnimationEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableCloseAnimation:Z

    .line 96
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 129
    return-void
.end method

.method public setListMenuOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 610
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 612
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const v12, 0x1080372

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 140
    iget-boolean v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z

    if-eqz v7, :cond_5

    .line 141
    new-instance v7, Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    .line 142
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, p0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/internal/PopupBubbleWindow$OnDismissListener;)V

    .line 145
    new-instance v7, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v7, p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 146
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7, v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, v8}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setModal(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 150
    .local v1, anchor:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 151
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_0

    move v0, v8

    .line 152
    .local v0, addGlobalListener:Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 153
    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 155
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 160
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v9

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->htcPopupWindowWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 161
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7, v13}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 163
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_4

    .line 164
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    .line 169
    instance-of v7, v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_2

    move-object v7, v1

    .line 170
    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMultiplyForceEnabled(Z)V

    .line 173
    :cond_2
    instance-of v7, v1, Lcom/android/internal/view/menu/OverflowMenuView;

    if-eqz v7, :cond_3

    move-object v7, v1

    .line 174
    check-cast v7, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/OverflowMenuView;->setMultiplyForceEnabled(Z)V

    .line 178
    :cond_3
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 179
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupSpecial:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v7}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    .end local v0           #addGlobalListener:Z
    :cond_4
    :goto_0
    return v8

    .line 184
    .end local v1           #anchor:Landroid/view/View;
    :cond_5
    new-instance v7, Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const v11, 0x1010300

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 185
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 186
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    new-instance v7, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v7, p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 189
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 193
    .restart local v1       #anchor:Landroid/view/View;
    if-eqz v1, :cond_9

    .line 194
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_6

    move v0, v8

    .line 195
    .restart local v0       #addGlobalListener:Z
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 196
    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 197
    :cond_7
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 198
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 203
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v9

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 204
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v13}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 205
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    .line 206
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 210
    .local v3, resource:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v7, :cond_4

    .line 213
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const v9, 0x1080231

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v5, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 218
    .local v5, skin:Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string v7, "default"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 219
    :cond_8
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string v10, "list_selector_background"

    invoke-static {v9, v10, v12}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelector(I)V

    goto/16 :goto_0

    .end local v0           #addGlobalListener:Z
    .end local v3           #resource:Landroid/content/res/Resources;
    .end local v5           #skin:Ljava/lang/String;
    :cond_9
    move v8, v0

    .line 200
    goto/16 :goto_0

    .line 223
    .restart local v0       #addGlobalListener:Z
    .restart local v3       #resource:Landroid/content/res/Resources;
    .restart local v5       #skin:Ljava/lang/String;
    :cond_a
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 224
    .local v6, skinPackageResources:Landroid/content/res/Resources;
    const-string v7, "list_selector_background"

    const-string v9, "drawable"

    invoke-virtual {v6, v7, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 226
    .local v4, resourceID:I
    if-eqz v4, :cond_b

    .line 227
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    .end local v4           #resourceID:I
    .end local v6           #skinPackageResources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 233
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/ListView;->setSelector(I)V

    goto/16 :goto_0

    .line 229
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #resourceID:I
    .restart local v6       #skinPackageResources:Landroid/content/res/Resources;
    :cond_b
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string v10, "list_selector_background"

    const v11, 0x1080372

    invoke-static {v9, v10, v11}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelector(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .parameter "cleared"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 392
    :cond_0
    return-void
.end method
