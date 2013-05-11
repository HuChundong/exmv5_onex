.class public Lcom/htc/opensense/social/Album;
.super Lcom/htc/opensense/social/Core;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field count:I

.field coverThumbnailUrl:Ljava/lang/String;

.field cover_Id:Ljava/lang/String;

.field createTime:J

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field lastModified:J

.field name:Ljava/lang/String;

.field owner_id:Ljava/lang/String;

.field privacy:Ljava/lang/String;

.field webLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/opensense/social/Album$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Album$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/Album;->count:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Album;->createTime:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 67
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 3
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "album"

    iget-object v2, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->deleteAlbum(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public edit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense/social/Album;
    .locals 6
    .parameter "name"
    .parameter "description"
    .parameter "privacy"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->editAlbum(Lcom/htc/opensense/social/Album;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public getComments()[Lcom/htc/opensense/social/Comment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "album"

    iget-object v2, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getComments(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/opensense/social/Album;->count:I

    return v0
.end method

.method public getCoverId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->cover_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    return-wide v0
.end method

.method public getMedia(I)[Lcom/htc/opensense/social/Medium;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getMedia(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string v0, "album"

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 130
    iput p1, p0, Lcom/htc/opensense/social/Album;->count:I

    .line 131
    return-void
.end method

.method public setCoverId(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_Id"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->cover_Id:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setCoverThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "coverLink"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 242
    iput-wide p1, p0, Lcom/htc/opensense/social/Album;->createTime:J

    .line 243
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    .line 259
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0
    .parameter "webLink"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/htc/opensense/social/Album;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 99
    return-void
.end method
