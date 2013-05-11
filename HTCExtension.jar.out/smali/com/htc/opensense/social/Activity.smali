.class public Lcom/htc/opensense/social/Activity;
.super Lcom/htc/opensense/social/Core;
.source "Activity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activity_type:Ljava/lang/String;

.field description:Ljava/lang/String;

.field endTime:J

.field iconUrl:Ljava/lang/String;

.field id:Ljava/lang/String;

.field lastupdate_time:J

.field location:Ljava/lang/String;

.field owner_id:Ljava/lang/String;

.field priority:I

.field privacy:Ljava/lang/String;

.field sourceUrl:Ljava/lang/String;

.field startTime:J

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/htc/opensense/social/Activity$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Activity;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .parameter "in"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 65
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
    .line 320
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "Activity"

    iget-object v2, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

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
    .line 312
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "Activity"

    iget-object v2, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getComments(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()[Lcom/htc/opensense/social/Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getEventMembers(Ljava/lang/String;)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/htc/opensense/social/Activity;->priority:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "Activity"

    return-object v0
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0
    .parameter "activityType"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "descp"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    .line 233
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->iconUrl:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "lastupdateTime"

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    .line 185
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->location:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 280
    iput p1, p0, Lcom/htc/opensense/social/Activity;->priority:I

    .line 281
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceUrl"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->sourceUrl:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    .line 217
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 97
    return-void
.end method
