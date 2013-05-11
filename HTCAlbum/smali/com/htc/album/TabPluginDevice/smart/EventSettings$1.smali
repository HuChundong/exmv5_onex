.class Lcom/htc/album/TabPluginDevice/smart/EventSettings$1;
.super Ljava/lang/Object;
.source "EventSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/smart/EventSettings;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/EventSettings;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/smart/EventSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/EventSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/EventSettings;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->finish()V

    .line 153
    return-void
.end method
