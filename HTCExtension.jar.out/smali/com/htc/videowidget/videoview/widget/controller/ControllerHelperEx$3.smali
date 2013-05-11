.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$3;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->hide()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: hide()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$3;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->hide()Z

    .line 190
    return-void
.end method
