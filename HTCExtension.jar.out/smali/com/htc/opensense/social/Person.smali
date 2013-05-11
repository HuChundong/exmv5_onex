.class public Lcom/htc/opensense/social/Person;
.super Lcom/htc/opensense/social/Core;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Person;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Person"

.field public static final NOT_LOGIN:Lcom/htc/opensense/social/Person; = null

.field public static final PERSON:Ljava/lang/String; = "Person"


# instance fields
.field birthDate:[I

.field buddyIconUrl:Ljava/lang/String;

.field cell_number:Ljava/lang/String;

.field email_address:Ljava/lang/String;

.field fullname:Ljava/lang/String;

.field id:Ljava/lang/String;

.field largeBuddyIconUrl:Ljava/lang/String;

.field latestStatus:Lcom/htc/opensense/social/Activity;

.field location:Ljava/lang/String;

.field name:Ljava/lang/String;

.field phone_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/htc/opensense/social/Person;

    const-string v1, "-1"

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/Person;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/social/Person;->NOT_LOGIN:Lcom/htc/opensense/social/Person;

    .line 46
    new-instance v0, Lcom/htc/opensense/social/Person$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Person$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    .line 27
    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 86
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    .line 27
    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 72
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setDescription(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setTitle(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/Activity;->setLastUpdateTime(J)V

    .line 75
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setActivityType(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setOwnerId(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iget-object v1, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setService(Lcom/htc/opensense/social/ISocialInterfaceProxy;)V

    .line 78
    return-void

    .line 20
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/Person$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    .line 27
    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 81
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 82
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method addAlbum(Lcom/htc/opensense/social/Album;)Lcom/htc/opensense/social/Album;
    .locals 2
    .parameter "album"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addAlbum(Ljava/lang/String;Lcom/htc/opensense/social/Album;)Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 138
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/Person;

    .line 140
    .local v0, p:Lcom/htc/opensense/social/Person;
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivities(Ljava/lang/String;I)[Lcom/htc/opensense/social/Activity;
    .locals 2
    .parameter "type"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getActivities(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAlbums()[Lcom/htc/opensense/social/Album;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getAlbums([Ljava/lang/String;[Ljava/lang/String;)[Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public getBirthdate()[I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    return-object v0
.end method

.method public getBuddyIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCellNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList()[Lcom/htc/opensense/social/Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getFriendList(Ljava/lang/String;)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getFriendship(Ljava/lang/String;)I
    .locals 2
    .parameter "fid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getFriendship(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeBuddyIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestStatus()Lcom/htc/opensense/social/Activity;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    return-object v0
.end method

.method public getNotifications()[Lcom/htc/opensense/social/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getNotifications(Ljava/lang/String;)[Lcom/htc/opensense/social/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-interface {v0, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentMedia(I)[Lcom/htc/opensense/social/Medium;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getMedia(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "Person"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getProfile()Lcom/htc/opensense/social/Person;

    move-result-object v0

    .line 151
    .local v0, p:Lcom/htc/opensense/social/Person;
    iget-object v1, v0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 152
    iget-object v1, v0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setBirthdate([I)V
    .locals 3
    .parameter "date"

    .prologue
    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 325
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBuddyIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setCellNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "_number"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setCurrentLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "_email"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fname"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setLargeBuddyIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setLatestStatus(Lcom/htc/opensense/social/Activity;)V
    .locals 0
    .parameter "latestStatus"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 416
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "_number"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setProfileUpdateTime(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 305
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 105
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getLastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    return-void
.end method
