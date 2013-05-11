.class public Lcom/android/camera/io/DCFInfo;
.super Ljava/lang/Object;
.source "DCFInfo.java"


# static fields
.field public static final DEFAULT:Lcom/android/camera/io/DCFInfo;


# instance fields
.field public final dirCounterPrefKey:Ljava/lang/String;

.field public final dirFreeChar:Ljava/lang/String;

.field public final fileCounterPrefKey:Ljava/lang/String;

.field public final fileTag:Ljava/lang/String;

.field public final maxDirectoryCounter:I

.field public final maxFileCounter:I

.field public final subCounterDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "IMAG"

    const-string v3, "counter_image"

    const-string v4, "counter_imagefolder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    sget-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    iput p5, p0, Lcom/android/camera/io/DCFInfo;->subCounterDigits:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iput p5, p0, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    iput p6, p0, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/io/DCFInfo;->subCounterDigits:I

    return-void
.end method
