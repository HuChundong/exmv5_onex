.class public Lcom/htc/opensense/social/data/Person;
.super Lcom/htc/opensense/social/data/Extra;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSON:Ljava/lang/String; = "Person"


# instance fields
.field public about_me:Ljava/lang/String;

.field public activities:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public birthday_day:I

.field public birthday_month:I

.field public birthday_year:I

.field public books:Ljava/lang/String;

.field public cell_number:Ljava/lang/String;

.field public current_location:Ljava/lang/String;

.field public email_address:Ljava/lang/String;

.field public fullname:Ljava/lang/String;

.field public hometown_location:Ljava/lang/String;

.field public interests:Ljava/lang/String;

.field public largeBuddyIconUrl:Ljava/lang/String;

.field public lastProfileUpdateTime:J

.field public latestStatus:Lcom/htc/opensense/social/data/Feed;

.field public location:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public music:Ljava/lang/String;

.field public networks:[Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public political:Ljava/lang/String;

.field public profile_blurb:Ljava/lang/String;

.field public profile_type:Ljava/lang/String;

.field public profile_url:Ljava/lang/String;

.field public quotes:Ljava/lang/String;

.field public relationship_status:Ljava/lang/String;

.field public religion:Ljava/lang/String;

.field public tv:Ljava/lang/String;

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field private user:Lcom/htc/opensense/social/data/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/htc/opensense/social/data/Person$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Person$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 285
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 35
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 42
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 49
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 91
    new-instance v0, Lcom/htc/opensense/social/data/Feed;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 121
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    .line 287
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Person;->setExtra(Landroid/os/Bundle;)V

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/data/Person$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pid"

    .prologue
    const/4 v0, -0x1

    .line 324
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 35
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 42
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 49
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 91
    new-instance v0, Lcom/htc/opensense/social/data/Feed;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 121
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 325
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    iget-object v1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    .line 327
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 381
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/data/Person;

    .line 383
    .local v0, p:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAbout_me()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    return-object v0
.end method

.method public getActivities()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday_day()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    return v0
.end method

.method public getBirthday_month()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    return v0
.end method

.method public getBirthday_year()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    return v0
.end method

.method public getBooks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    return-object v0
.end method

.method public getCell_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    return-object v0
.end method

.method public getFullname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getHometown_location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeBuddyIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastProfileUpdateTime()J
    .locals 2

    .prologue
    .line 600
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    return-wide v0
.end method

.method public getLatestStatus()Lcom/htc/opensense/social/data/Feed;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMovies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworks()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPolitical()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getProfile_blurb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    return-object v0
.end method

.method public getTv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAbout_me(Ljava/lang/String;)V
    .locals 0
    .parameter "about_me"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 625
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public setActivities(Ljava/lang/String;)V
    .locals 0
    .parameter "activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 881
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    .line 882
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 689
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    .line 690
    return-void
.end method

.method public setBirthday_day(I)V
    .locals 0
    .parameter "birthday_day"

    .prologue
    .line 483
    iput p1, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 484
    return-void
.end method

.method public setBirthday_month(I)V
    .locals 0
    .parameter "birthday_month"

    .prologue
    .line 465
    iput p1, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 466
    return-void
.end method

.method public setBirthday_year(I)V
    .locals 0
    .parameter "birthday_year"

    .prologue
    .line 447
    iput p1, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 448
    return-void
.end method

.method public setBooks(Ljava/lang/String;)V
    .locals 0
    .parameter "books"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public setCell_number(Ljava/lang/String;)V
    .locals 0
    .parameter "cell_number"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setCurrent_location(Ljava/lang/String;)V
    .locals 0
    .parameter "current_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 705
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public setEmail_address(Ljava/lang/String;)V
    .locals 0
    .parameter "email_address"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .locals 0
    .parameter "fullname"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setHometown_location(Ljava/lang/String;)V
    .locals 0
    .parameter "hometown_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    .line 722
    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .locals 0
    .parameter "interests"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    .line 866
    return-void
.end method

.method public setLargeBuddyIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "largeBuddyIconUrl"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setLastProfileUpdateTime(J)V
    .locals 0
    .parameter "lastProfileUpdateTime"

    .prologue
    .line 609
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 610
    return-void
.end method

.method public setLatestStatus(Lcom/htc/opensense/social/data/Feed;)V
    .locals 0
    .parameter "latestStatus"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    .line 592
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setMovies(Ljava/lang/String;)V
    .locals 0
    .parameter "movies"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    .line 738
    return-void
.end method

.method public setMusic(Ljava/lang/String;)V
    .locals 0
    .parameter "music"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 753
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    .line 754
    return-void
.end method

.method public setNetworks([Ljava/lang/String;)V
    .locals 0
    .parameter "networks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 658
    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .locals 0
    .parameter "phone_number"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setPolitical(Ljava/lang/String;)V
    .locals 0
    .parameter "political"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 817
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    .line 818
    return-void
.end method

.method public setProfile_blurb(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_blurb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public setProfile_type(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 897
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    .line 898
    return-void
.end method

.method public setProfile_url(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    .line 834
    return-void
.end method

.method public setQuotes(Ljava/lang/String;)V
    .locals 0
    .parameter "quotes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 849
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setRelationship_status(Ljava/lang/String;)V
    .locals 0
    .parameter "relationship_status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 673
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    .line 674
    return-void
.end method

.method public setReligion(Ljava/lang/String;)V
    .locals 0
    .parameter "religion"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 801
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public setTv(Ljava/lang/String;)V
    .locals 0
    .parameter "tv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 769
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    .line 770
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 344
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 373
    return-void
.end method
