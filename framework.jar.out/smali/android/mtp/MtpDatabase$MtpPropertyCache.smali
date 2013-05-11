.class Landroid/mtp/MtpDatabase$MtpPropertyCache;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MtpPropertyCache"
.end annotation


# instance fields
.field public miAdded:J

.field public miDuration:J

.field public miFormat:I

.field public miModified:J

.field public miOriginalReleaseDate:I

.field public miParent:I

.field public miSize:J

.field public miStorageId:I

.field public miTrack:I

.field public mszAlbumArtist:Ljava/lang/String;

.field public mszComposer:Ljava/lang/String;

.field public mszDescription:Ljava/lang/String;

.field public mszDisplayName:Ljava/lang/String;

.field public mszFullPath:Ljava/lang/String;

.field public mszTitle:Ljava/lang/String;

.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 1550
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MtpPropertyCache;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    return-void
.end method
