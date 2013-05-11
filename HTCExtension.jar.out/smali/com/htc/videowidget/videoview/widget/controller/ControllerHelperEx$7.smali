.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setPlayButtonIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$isPlaying:Z


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput-boolean p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;->val$isPlaying:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: setPlayButtonIcon()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$7;->val$isPlaying:Z

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setPlayButtonIcon(Z)V

    .line 355
    return-void
.end method
