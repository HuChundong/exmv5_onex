.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->showDialog(ILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1658
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene.3;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1661
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene.3;"
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1662
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #calls: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doClose()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$1100(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    .line 1663
    return-void
.end method
