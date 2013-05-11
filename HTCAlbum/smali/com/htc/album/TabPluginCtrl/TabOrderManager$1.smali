.class Lcom/htc/album/TabPluginCtrl/TabOrderManager$1;
.super Ljava/lang/Object;
.source "TabOrderManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginCtrl/TabOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/opensense/plugin/TabPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginCtrl/TabOrderManager;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginCtrl/TabOrderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager$1;->this$0:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/opensense/plugin/TabPlugin;Lcom/htc/opensense/plugin/TabPlugin;)I
    .locals 2
    .parameter "tb1"
    .parameter "tb2"

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    check-cast p1, Lcom/htc/opensense/plugin/TabPlugin;

    .end local p1
    check-cast p2, Lcom/htc/opensense/plugin/TabPlugin;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager$1;->compare(Lcom/htc/opensense/plugin/TabPlugin;Lcom/htc/opensense/plugin/TabPlugin;)I

    move-result v0

    return v0
.end method
