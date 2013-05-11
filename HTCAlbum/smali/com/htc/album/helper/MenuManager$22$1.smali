.class Lcom/htc/album/helper/MenuManager$22$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$22;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$22;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$22;)V
    .locals 0
    .parameter

    .prologue
    .line 5090
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5097
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$22$1;->this$1:Lcom/htc/album/helper/MenuManager$22;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$22;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 5098
    return-void
.end method
