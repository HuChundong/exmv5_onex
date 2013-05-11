.class public Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
.super Ljava/lang/Object;
.source "DLNAServiceDirectory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIndexFolder:I

.field private mListFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    .line 302
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    .line 316
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->readFromParcel(Landroid/os/Parcel;)V

    .line 317
    return-void
.end method

.method public static createEmtpyDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 1
    .parameter "szID"
    .parameter "szName"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;-><init>()V

    .line 37
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setID(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setName(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public static exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v1, "/"

    .line 24
    .local v1, szLocation:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 26
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 31
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addLastestAccess(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 8
    .parameter "directory"

    .prologue
    .line 218
    move-object v0, p1

    .line 219
    .local v0, dirInfoAccess:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v1, 0x0

    .line 221
    .local v1, dirInfoCached:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 223
    .local v3, nDirSize:I
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 224
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    if-gt v3, v5, :cond_1

    .line 226
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: new directory1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    if-eqz v3, :cond_0

    .line 233
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dirInfoCached:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 235
    .restart local v1       #dirInfoCached:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: old directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: new directory2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    add-int/lit8 v2, v5, -0x1

    .line 244
    .local v2, nCountEnd:I
    add-int/lit8 v4, v3, -0x1

    .local v4, nIndex:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 246
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 249
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public exportDirectories()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 95
    .local v3, nDirSize:I
    if-nez v3, :cond_0

    move-object v2, v1

    .line 123
    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local v2, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    return-object v2

    .line 98
    .end local v2           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v1       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .restart local v1       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    if-le v3, v4, :cond_2

    .line 107
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-nez v0, :cond_1

    .line 105
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->exportPages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 123
    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 5

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 201
    .local v2, nDirectorySize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 209
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 204
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    if-gt v2, v3, :cond_1

    .line 205
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 209
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    return v0
.end method

.method public getDirectories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 174
    .local v2, nDirectorySize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 181
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 177
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    if-gt v2, p1, :cond_1

    move-object v1, v0

    .line 178
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0

    .line 180
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 181
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getNext(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 1
    .parameter "directory"

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->addLastestAccess(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPrevious()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 5

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 289
    .local v2, nDirSize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 300
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 292
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 293
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    if-gez v3, :cond_1

    .line 295
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    move-object v1, v0

    .line 296
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0

    .line 299
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 300
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getRoot()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 5

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .local v2, nDirectorySize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 194
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 191
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 192
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 194
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public importDirectories(Ljava/util/ArrayList;)V
    .locals 5
    .parameter "importInfo"

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 89
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 48
    .local v2, nDirSize:I
    if-eqz v2, :cond_0

    .line 51
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_0
    if-le v2, v3, :cond_0

    .line 60
    if-nez v3, :cond_2

    .line 62
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 55
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_2
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;-><init>()V

    .line 69
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setID(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setName(Ljava/lang/String;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, currentIndex:I
    add-int/lit8 v3, v3, 0x1

    .line 81
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->importPages(Ljava/util/ArrayList;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setCurrentPageIndex(I)V

    .line 86
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public printCurrentDirLog()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 321
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 322
    return-void
.end method

.method public removeChildrenFolder(Ljava/lang/String;)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 259
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 261
    .local v3, iter:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 262
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v0, 0x0

    .line 263
    .local v0, bDeleteChildren:Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 267
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v1, :cond_0

    .line 270
    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_1
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 278
    .local v2, folderSize:I
    if-lez v2, :cond_3

    .line 279
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 282
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 281
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    goto :goto_1
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 154
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 155
    return-void
.end method

.method public setDirectories(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    return-void
.end method

.method public setDirectory(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)V
    .locals 1
    .parameter "directory"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 331
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 333
    return-void
.end method
