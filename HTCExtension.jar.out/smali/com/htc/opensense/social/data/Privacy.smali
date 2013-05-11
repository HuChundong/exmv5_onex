.class public Lcom/htc/opensense/social/data/Privacy;
.super Ljava/lang/Object;
.source "Privacy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Privacy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public humanString:Ljava/lang/String;

.field public serverString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/opensense/social/data/Privacy$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Privacy$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Privacy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Privacy;->humanString:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Privacy;->serverString:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getHumanString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/opensense/social/data/Privacy;->humanString:Ljava/lang/String;

    return-object v0
.end method

.method public getServerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/opensense/social/data/Privacy;->serverString:Ljava/lang/String;

    return-object v0
.end method

.method public setHumanString(Ljava/lang/String;)V
    .locals 0
    .parameter "humanString"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/opensense/social/data/Privacy;->humanString:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setServerString(Ljava/lang/String;)V
    .locals 0
    .parameter "serverString"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/opensense/social/data/Privacy;->serverString:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/opensense/social/data/Privacy;->humanString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/opensense/social/data/Privacy;->serverString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method
