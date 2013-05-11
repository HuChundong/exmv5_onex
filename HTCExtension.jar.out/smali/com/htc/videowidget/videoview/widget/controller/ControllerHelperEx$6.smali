.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$listener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput-object p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;->val$listener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: setListener()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$6;->val$listener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 329
    return-void
.end method
