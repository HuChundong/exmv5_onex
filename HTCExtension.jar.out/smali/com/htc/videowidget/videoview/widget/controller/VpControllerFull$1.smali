.class Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;
.super Ljava/lang/Object;
.source "VpControllerFull.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoreButtonClick()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    const/16 v1, 0xbc1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onMoreListItemClick(IZ)V
    .locals 3
    .parameter "nFunctionId"
    .parameter "bToggleState"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v1, v1, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    if-eqz v1, :cond_0

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "key_int"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v1, "key_boolean"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v1, v1, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    const/16 v2, 0xbbf

    invoke-virtual {v1, v2, v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 126
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
