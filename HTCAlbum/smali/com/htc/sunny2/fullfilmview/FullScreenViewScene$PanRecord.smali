.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanRecord"
.end annotation


# instance fields
.field public panBeginFramePosition:F

.field public panBeginItemIndex:I

.field public panBeginPosition:F

.field public panBeginTime:J

.field public panCrossedFrame:Z

.field public panDistance:F

.field public panDuration:J

.field public panEndTime:J

.field public panFrameDistance:F

.field public panVelocity:F

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    .line 82
    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panEndTime:J

    .line 83
    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    .line 84
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    .line 85
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginPosition:F

    .line 86
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 87
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    .line 88
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    .line 89
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panFrameDistance:F

    .line 91
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    return-void
.end method
