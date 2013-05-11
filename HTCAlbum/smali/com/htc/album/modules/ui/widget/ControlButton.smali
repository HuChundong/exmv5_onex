.class public abstract Lcom/htc/album/modules/ui/widget/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/widget/ControlButton$1;,
        Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUTTON:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEF_BUBBLE_SIZE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STYLE_BUBBLE:I = 0x5

.field public static final STYLE_FOOTER_BUTTON:I = 0x3

.field public static final STYLE_HEADER_BUTTON:I = 0x1


# instance fields
.field protected mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

.field protected mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field protected mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

.field protected mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

.field protected mBubbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButton:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBUTTON;"
        }
    .end annotation
.end field

.field protected mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field protected mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field mDisplay:Landroid/view/Display;

.field protected mGroupId:I

.field protected mId:I

.field private mIsdataPlugin:Z

.field private mLockBubbleDirection:I

.field private mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field protected mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

.field protected mStyle:I

.field private mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/ControlButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;III)V
    .locals 2
    .parameter
    .parameter "groupId"
    .parameter "btnId"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBUTTON;III)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    .local p1, btn:Landroid/view/View;,"TBUTTON;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 68
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 69
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    .line 72
    iput v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    .line 74
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 77
    iput-boolean v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mIsdataPlugin:Z

    .line 84
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 166
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    invoke-direct {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton$1;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    .line 221
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 242
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    .line 243
    iput p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mGroupId:I

    .line 244
    iput p3, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    .line 245
    iput p4, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mStyle:I

    .line 246
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/album/modules/ui/widget/ControlButton;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 339
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 341
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    .line 342
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextResource(I)V

    .line 345
    return-object v0
.end method

.method public addBubble(IILjava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "text"

    .prologue
    .line 329
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 331
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    .line 332
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 335
    return-object v0
.end method

.method public addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "bitmap"
    .parameter "text"

    .prologue
    .line 349
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 351
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    if-eqz p2, :cond_0

    .line 352
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    :goto_0
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 358
    return-object v0

    .line 354
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "drawable"
    .parameter "text"

    .prologue
    .line 319
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 321
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 325
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 303
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    .line 305
    return-void
.end method

.method public clearBubble()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    const/4 v1, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->dismissBubble()V

    .line 470
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 473
    :cond_0
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    .line 474
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 475
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 476
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    .line 477
    return-void
.end method

.method public dismissBubble()V
    .locals 1

    .prologue
    .line 458
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    .line 460
    :cond_0
    return-void
.end method

.method public dismissBubbleWithoutAnimation()V
    .locals 1

    .prologue
    .line 463
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismissWithoutAnimation()V

    .line 465
    :cond_0
    return-void
.end method

.method public enableShareDataPlugin(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 552
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mIsdataPlugin:Z

    .line 553
    return-void
.end method

.method public getButton()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUTTON;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 252
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mGroupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 257
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    return v0
.end method

.method public hasBubble()Z
    .locals 1

    .prologue
    .line 373
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 298
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    return-void
.end method

.method public isBubbleShowing()Z
    .locals 1

    .prologue
    .line 481
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v0

    goto :goto_0
.end method

.method lockBubbleExpandDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 386
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    .line 387
    return-void
.end method

.method protected newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 3
    .parameter "groupId"
    .parameter "btnId"

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    const/4 v2, 0x5

    .line 363
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    .line 366
    :cond_0
    new-instance v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/album/modules/ui/widget/BubbleButton;-><init>(Lcom/htc/widget/HtcListItem;III)V

    .line 367
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-object v0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 378
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->isBubbleShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 279
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    return-void
.end method

.method setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 288
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    .line 289
    return-void
.end method

.method public abstract setImageBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setImageResource(I)V
.end method

.method public setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 267
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 268
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->setControlButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 270
    return-void
.end method

.method public setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 274
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 275
    return-void
.end method

.method public setSharedAdapter(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 556
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 557
    return-void
.end method

.method public abstract setTextResource(I)V
.end method

.method public abstract setTextString(Ljava/lang/String;)V
.end method

.method public show()V
    .locals 2

    .prologue
    .line 293
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    return-void
.end method

.method public showBubble()Z
    .locals 9

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 391
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->hasBubble()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 453
    :cond_1
    :goto_0
    return v4

    .line 394
    :cond_2
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    if-nez v6, :cond_3

    .line 396
    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 399
    :cond_3
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v6, :cond_4

    .line 401
    new-instance v6, Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v6}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>()V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 402
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    .line 403
    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v6, v7}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;-><init>(Lcom/htc/widget/HtcPopupWindowWrapper;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    .line 404
    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    iget-object v7, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v6, v7, v8}, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;-><init>(Ljava/util/List;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    .line 405
    new-instance v6, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton;Lcom/htc/album/modules/ui/widget/ControlButton$1;)V

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 408
    :cond_4
    iget v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    if-nez v6, :cond_a

    .line 410
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 412
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 413
    .local v1, mgr:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    .line 416
    .end local v1           #mgr:Landroid/view/WindowManager;
    :cond_5
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_8

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 418
    .local v2, rotation:I
    :goto_1
    if-eqz v2, :cond_6

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    .line 419
    :cond_6
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    .line 428
    .end local v2           #rotation:I
    :goto_2
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->setControlBubbleListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 429
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->setBubbleItemClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;)V

    .line 432
    iget v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    if-eq v4, v5, :cond_7

    iget-boolean v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mIsdataPlugin:Z

    if-nez v5, :cond_7

    const/high16 v5, 0x60a0

    iget v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    if-ne v5, v6, :cond_b

    .line 434
    :cond_7
    invoke-static {}, Lcom/htc/album/helper/ShareMenuManager;->getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v0

    .line 435
    .local v0, htcShareAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    new-instance v3, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mShareItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;

    invoke-direct {v3, v5, v0, v6}, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;-><init>(Lcom/htc/widget/HtcPopupWindowWrapper;Lcom/htc/widget/IHtcShareViaAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 438
    .local v3, shareViaListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 439
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;)V

    .line 447
    .end local v0           #htcShareAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    .end local v3           #shareViaListener:Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;
    :goto_3
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 448
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v5}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V

    .line 450
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    if-eqz v5, :cond_1

    .line 451
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-interface {v5}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;->onBubblePopped()V

    goto/16 :goto_0

    :cond_8
    move v2, v5

    .line 416
    goto :goto_1

    .line 421
    .restart local v2       #rotation:I
    :cond_9
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_2

    .line 425
    .end local v2           #rotation:I
    :cond_a
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mLockBubbleDirection:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_2

    .line 443
    :cond_b
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_3
.end method
