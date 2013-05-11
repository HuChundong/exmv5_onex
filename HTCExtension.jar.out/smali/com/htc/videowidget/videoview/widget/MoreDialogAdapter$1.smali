.class Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$1;
.super Ljava/lang/Object;
.source "MoreButton.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    #getter for: Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mListener:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->access$000(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    #getter for: Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->mListener:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->access$000(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/widget/HtcToggleButtonLight;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;->onToggleChange(IZ)V

    .line 601
    :cond_0
    return-void
.end method
