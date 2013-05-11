.class public Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"


# static fields
.field public static final FUNC_ID_AUDIO_ONLY:I = 0xd

.field public static final FUNC_ID_CAPTURE_FRAME:I = 0x3

.field public static final FUNC_ID_DELETE:I = 0x6

.field public static final FUNC_ID_DETAIL:I = 0xc

.field public static final FUNC_ID_DISPLAY_FIT:I = 0x0

.field public static final FUNC_ID_DISPLAY_FULL:I = 0x1

.field public static final FUNC_ID_LOCKSCREEN:I = 0x7

.field public static final FUNC_ID_SELECT_PLAYER:I = 0xa

.field public static final FUNC_ID_SHARE:I = 0xb

.field public static final FUNC_ID_SLOW_MOTION:I = 0x3e9

.field public static final FUNC_ID_SOUND_ENHANCER:I = 0x4

.field public static final FUNC_ID_SUBTITLE:I = 0x2

.field public static final FUNC_ID_THREE_D_MODE:I = 0x8

.field public static final FUNC_ID_TRIM:I = 0x5

.field public static final FUNC_ID_TWO_D_MODE:I = 0x9

.field public static final FUNC_ID_VIDEO_AUDIO:I = 0xe

.field public static final FUNC_ID_VIDEO_ONLY:I = 0xf

.field public static final GRAYOUT_ALL:I = 0x25c

.field public static final GRAYOUT_HIGH_SPEED_BUTTON:I = 0x25a

.field public static final GRAYOUT_MORE:I = 0x25d

.field public static final GRAYOUT_PLAY_BUTTON:I = 0x259

.field public static final GRAYOUT_SEEKBAR:I = 0x25b

.field public static final ID_SEEKBAR_DURATION:I = 0x385

.field public static final ID_SEEKBAR_PROGRESS:I = 0x386

.field public static final ID_SEEKBAR_SECONDARY:I = 0x387

.field private static final TAG:Ljava/lang/String; = "ControllerHelper"

.field public static final TOTAL_FUNCTION_COUNT:I = 0x11

.field public static final TYPE_FULL:I = 0x25a

.field public static final TYPE_SIMPLE:I = 0x259


# instance fields
.field private isStream:Z

.field private mContext:Landroid/content/Context;

.field private mControllerType:I

.field private mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

.field private mIsNavigationBar:Z

.field private mIsPrepared:Z

.field private mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

.field private mOrientation:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/16 v3, 0x25a

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 58
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 59
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 60
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    .line 62
    iput v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isStream:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    .line 69
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getView(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .parameter "context"
    .parameter "rootView"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 58
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 59
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 60
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    .line 62
    const/16 v0, 0x25a

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isStream:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    .line 74
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getView(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 3
    .parameter "context"
    .parameter "rootView"
    .parameter "type"
    .parameter "isNavigationBar"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 58
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 59
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 60
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    .line 62
    const/16 v0, 0x25a

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isStream:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getView(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;)Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;)Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    return p1
.end method

.method private getView(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 3
    .parameter "context"
    .parameter "rootView"
    .parameter "type"
    .parameter "isNavigationBar"

    .prologue
    .line 85
    const-string v0, "ControllerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNavigationBar =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    .line 88
    iput p3, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    .line 90
    iput-boolean p4, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    .line 91
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;

    invoke-direct {v1, p0, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method


# virtual methods
.method public getControllerType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mOrientation:I

    return v0
.end method

.method public hide()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 155
    const-string v1, "ControllerHelper"

    const-string v2, "hide"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v1, :cond_4

    .line 158
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    const/16 v2, 0x25a

    if-ne v1, v2, :cond_2

    .line 160
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->dismissPopWindows()V

    .line 165
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 192
    :cond_1
    :goto_0
    return v0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->dismissPopWindows()V

    .line 174
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$3;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$3;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeFunction(IZ)V
    .locals 1
    .parameter "nFunctionID"
    .parameter "isEnable"

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunctionEx(IZZ)V

    .line 445
    return-void
.end method

.method public invokeFunctionEx(IZZ)V
    .locals 4
    .parameter "nFunctionID"
    .parameter "isEnable"
    .parameter "bToggleState"

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "ControllerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[invokeFunctionEx], nFunctionID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,bToggleState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->invokeFunction(IZZ)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;IZZ)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isControllerGrayOut(I)Z
    .locals 1
    .parameter "grayOutID"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, p1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->isGrayOut(I)Z

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 300
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    const/16 v2, 0x25a

    if-ne v1, v2, :cond_1

    .line 302
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->isShowing()Z

    move-result v0

    .line 306
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public setControllerGrayOut(IZ)V
    .locals 4
    .parameter "grayOutID"
    .parameter "isGrayOut"

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setGrayOut(IZ)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$12;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;IZ)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setControllerType(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/16 v1, 0x25a

    .line 526
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_4

    .line 528
    const/16 v0, 0x259

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 530
    :cond_0
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    if-eq v0, p1, :cond_1

    .line 532
    iput p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    .line 533
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-nez v0, :cond_2

    .line 560
    :cond_1
    :goto_0
    return-void

    .line 535
    :cond_2
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    if-ne v0, v1, :cond_3

    .line 537
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 538
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->show()V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 543
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->show()V

    goto :goto_0

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;

    invoke-direct {v1, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setCurrentTimeTextVisibility(Z)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 584
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v1, :cond_2

    .line 586
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 587
    .local v0, v:I
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const/16 v2, 0x324

    invoke-interface {v1, v2, v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonVisibility(II)V

    .line 602
    .end local v0           #v:I
    :cond_0
    :goto_1
    return-void

    .line 586
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 592
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$15;

    invoke-direct {v2, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$15;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public setFFFRButtonVisibility(Z)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 566
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isStream:Z

    .line 567
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setOrientation(I)V

    .line 581
    :goto_1
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$14;

    invoke-direct {v1, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$14;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public setIsNavigationBarExit(Z)V
    .locals 4
    .parameter "b"

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 631
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    if-eq v0, p1, :cond_0

    .line 633
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    .line 634
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    instance-of v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setIsNavigationBarExit(Z)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$17;

    invoke-direct {v1, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$17;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_2

    .line 314
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 315
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-interface {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-interface {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;

    invoke-direct {v1, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setMoreMenuItemText(II)V
    .locals 4
    .parameter "itemId"
    .parameter "resId"

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    instance-of v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    invoke-virtual {v0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMoreMenuItemText(II)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;II)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    .line 241
    iput p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mOrientation:I

    .line 242
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_8

    .line 244
    const-string v0, "ControllerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOrientation mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->dismissPopWindows()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->dismissPopWindows()V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    instance-of v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    if-eqz v0, :cond_2

    .line 252
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mOrientation:I

    if-ne v0, v3, :cond_5

    .line 254
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isStream:Z

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchType(I)V

    .line 268
    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_7

    .line 270
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 291
    :cond_3
    :goto_1
    return-void

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchType(I)V

    goto :goto_0

    .line 261
    :cond_5
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isStream:Z

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchType(I)V

    goto :goto_0

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchType(I)V

    goto :goto_0

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    goto :goto_1

    .line 281
    :cond_8
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$5;

    invoke-direct {v1, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$5;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public setPlayButtonIcon(Z)V
    .locals 4
    .parameter "isPlaying"

    .prologue
    const/16 v2, 0x320

    .line 336
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 340
    if-eqz p1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x20800b6

    invoke-interface {v0, v2, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x20800bb

    invoke-interface {v0, v2, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;

    invoke-direct {v1, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public show()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 118
    const-string v1, "ControllerHelper"

    const-string v2, "show "

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v1, :cond_4

    .line 121
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    const/16 v2, 0x25a

    if-ne v1, v2, :cond_2

    .line 123
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->show()V

    .line 149
    :cond_1
    :goto_0
    return v0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->show()V

    goto :goto_0

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$2;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$2;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public simpleHide()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 198
    const-string v1, "ControllerHelper"

    const-string v2, "simpleHide"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v1, :cond_4

    .line 201
    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mControllerType:I

    const/16 v2, 0x25a

    if-ne v1, v2, :cond_2

    .line 203
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->dismissPopWindows()V

    .line 208
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->simpleHide()V

    .line 235
    :cond_1
    :goto_0
    return v0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->dismissPopWindows()V

    .line 217
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->simpleHide()V

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->hide()V

    goto :goto_0

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$4;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$4;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSeekBar(II)V
    .locals 4
    .parameter "nSeekBarParamID"
    .parameter "nValue"

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setSeekBarParam(II)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setSeekBarParam(II)V

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$10;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;II)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateSlowMotionState(Z)V
    .locals 5
    .parameter "isShowSlowModeIcon"

    .prologue
    .line 472
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v1, :cond_2

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, resID:I
    if-eqz p1, :cond_1

    .line 476
    const v0, 0x602000b

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const/16 v2, 0x323

    invoke-interface {v1, v2, v0}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 494
    .end local v0           #resID:I
    :cond_0
    :goto_1
    return-void

    .line 478
    .restart local v0       #resID:I
    :cond_1
    const v0, 0x6020002

    goto :goto_0

    .line 484
    .end local v0           #resID:I
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$11;

    invoke-direct {v2, p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$11;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public updateSpeedButtonIcon(IZ)V
    .locals 6
    .parameter "speedMode"
    .parameter "isPlaying"

    .prologue
    const v3, 0x20800b4

    const v2, 0x20800bb

    const/16 v1, 0x320

    const/16 v5, 0x322

    const/16 v4, 0x321

    .line 362
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    if-eqz v0, :cond_0

    .line 366
    if-eqz p2, :cond_1

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 371
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setPlayButtonIcon(Z)V

    .line 372
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 373
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x20800c0

    invoke-interface {v0, v5, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 377
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    const-string v2, "icon_btn_video_play_fastforward_1_dark"

    const v3, 0x602000c

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 378
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x20800c0

    invoke-interface {v0, v5, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 382
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    const-string v2, "icon_btn_video_play_fastforward_2_dark"

    const v3, 0x602000d

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 383
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x20800c0

    invoke-interface {v0, v5, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 387
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 388
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    const-string v2, "icon_btn_video_play_fastrewind_1_dark"

    const v3, 0x602000e

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto :goto_0

    .line 391
    :pswitch_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 392
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 393
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;

    const-string v2, "icon_btn_video_play_fastrewind_2_dark"

    const v3, 0x602000f

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto/16 :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setPlayButtonIcon(Z)V

    .line 401
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x6020009

    invoke-interface {v0, v4, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    .line 402
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    const v1, 0x602000a

    invoke-interface {v0, v5, v1}, Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;->setButtonIcon(II)V

    goto/16 :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;IZ)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
