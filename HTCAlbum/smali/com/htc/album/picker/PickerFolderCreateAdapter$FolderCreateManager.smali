.class Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;
.super Lcom/htc/album/helper/FolderManager;
.source "PickerFolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerFolderCreateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreateManager"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mfilterBucketId:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/picker/PickerFolderCreateAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerFolderCreateAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "srcBucketId"

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object p1, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->this$0:Lcom/htc/album/picker/PickerFolderCreateAdapter;

    invoke-direct {p0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    .line 154
    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->mfilterBucketId:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->mContext:Landroid/content/Context;

    .line 160
    iput-object p3, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->mfilterBucketId:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method protected doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, inputCL:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, finalCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-eqz p1, :cond_2

    .line 173
    const-string v6, "PickerFolderCreateAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doOrderCollections] inputCL = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->SMART_COLLECTION_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 176
    .local v4, smartCL:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v4           #smartCL:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->mfilterBucketId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 179
    iget-object v6, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;->mfilterBucketId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v5, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 185
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :goto_1
    return-object v1

    .line 189
    :cond_2
    const-string v6, "PickerFolderCreateAdapter"

    const-string v7, "[doOrderCollections] inputCL = null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
