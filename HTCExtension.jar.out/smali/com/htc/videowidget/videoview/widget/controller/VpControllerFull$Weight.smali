.class Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;
.super Ljava/lang/Object;
.source "VpControllerFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Weight"
.end annotation


# instance fields
.field public mButtonAreaWeightIfSlowMotionGone:I

.field public mButtonAreaWeightIfSlowMotionShown:I

.field public mMoreButtonAreaWeight:I

.field public mSeekbarMargin:I

.field public mSeekbarWeightIfSlowMotionGone:I

.field public mSeekbarWeightIfSlowMotionShown:I

.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    .line 60
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    .line 61
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 62
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 63
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    .line 64
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mButtonAreaWeightIfSlowMotionShown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mButtonAreaWeightIfSlowMotionGone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekbarWeightIfSlowMotionShown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekbarWeightIfSlowMotionGone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMoreButtonAreaWeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekbarMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
