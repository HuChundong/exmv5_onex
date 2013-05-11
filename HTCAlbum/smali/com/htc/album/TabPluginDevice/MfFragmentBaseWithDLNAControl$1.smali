.class Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;
.super Ljava/lang/Object;
.source "MfFragmentBaseWithDLNAControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl.1;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onActionBarBackPressed()V

    .line 82
    return-void
.end method
