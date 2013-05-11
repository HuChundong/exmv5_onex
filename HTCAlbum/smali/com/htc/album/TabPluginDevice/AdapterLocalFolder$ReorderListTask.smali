.class Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;
.super Landroid/os/AsyncTask;
.source "AdapterLocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->mAlbumList:Ljava/util/ArrayList;

    .line 497
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->mAlbumList:Ljava/util/ArrayList;

    .line 498
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->doOrderCollections(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doOrderCollections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, inputCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v9, 0x0

    .line 520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v3, finalCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v0, albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    move-object v8, p1

    .line 524
    .local v8, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 526
    .local v2, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, mediaType:Ljava/lang/String;
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v3, v9

    .line 546
    .end local v2           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v3           #finalCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #mediaType:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 532
    .restart local v3       #finalCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/htc/album/modules/collection/CollectionManager;->getSmartCollectionList()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v7, v1, v4

    .line 534
    .local v7, smartCL:Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 535
    .restart local v2       #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v2, :cond_2

    .line 537
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v3, v9

    .line 541
    goto :goto_0

    .line 532
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 543
    .end local v2           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v7           #smartCL:Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 545
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->notifyDataSetChanged()V

    .line 511
    return-void
.end method
