.class public Lcom/htc/videowidget/videoview/utilities/DisplayService;
.super Ljava/lang/Object;
.source "DisplayService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final VIDEO_2D:I = 0x2

.field public static final VIDEO_3D_LANDSCAPE:I = 0x0

.field public static final VIDEO_3D_PORTRAIT:I = 0x1

.field public static final VIDEO_3D_SWITCH_2D:I = 0x2

.field public static final VIDEO_3D_SWITCH_3D:I = 0x3

.field public static final VIDEO_3D_SWITCH_NONE:I = 0x0

.field public static final VIDEO_3D_SWITCH_SBS:I = 0x4

.field public static final VIDEO_3D_SWITCH_SBSRL:I = 0x6

.field public static final VIDEO_3D_SWITCH_TB:I = 0x5

.field public static final VIDEO_IS_2D_MODE:I = 0x1

.field public static final VIDEO_IS_3D_MODE:I = 0x2

.field public static final VIDEO_NONE_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/videowidget/videoview/utilities/DisplayService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/DisplayService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3DMode()I
    .locals 5

    .prologue
    .line 48
    const/4 v1, 0x2

    .line 49
    .local v1, mode:I
    sget-boolean v2, Lcom/htc/videowidget/common/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    .line 51
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get3DMode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return v1

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->Get3DMode()I

    move-result v1

    .line 63
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get3DMode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get3DMode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is3DMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->HAS_3D_BARRIER:Z

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/DisplayService;->get3DMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setStereoDisplayMode(I)V
    .locals 4
    .parameter "displayMode"

    .prologue
    .line 71
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    const-string v1, "Gallery"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->setStereoDisplayMode(ILjava/lang/String;)I

    .line 81
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setStereoDisplayMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/DisplayService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setStereoDisplayMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
