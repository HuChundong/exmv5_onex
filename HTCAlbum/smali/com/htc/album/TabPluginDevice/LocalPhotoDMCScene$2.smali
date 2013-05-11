.class Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;
.super Ljava/lang/Object;
.source "LocalPhotoDMCScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onSetupBurstShotButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;

    #calls: Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->switchToBurstShot()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->access$000(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;)V

    .line 231
    return-void
.end method
