.class Lcom/htc/videowidget/videoDMC/DMCFgm$2;
.super Ljava/lang/Object;
.source "DMCFgm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$2;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$2;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->closeDMC()V

    .line 2052
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$2;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v1, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2402(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 2053
    return-void
.end method
