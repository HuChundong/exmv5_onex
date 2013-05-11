.class public Lcom/android/camera/io/DCFInfo;
.super Ljava/lang/Object;
.source "DCFInfo.java"


# static fields
.field public static final DEFAULT:Lcom/android/camera/io/DCFInfo;


# instance fields
.field public final dirCounterPrefKey:Ljava/lang/String;

.field public final dirFreeChar:Ljava/lang/String;

.field public final fileCounterPrefKey:Ljava/lang/String;

.field private final fileTag:Ljava/lang/String;

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


# virtual methods
.method public getFileTag()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    sget-object v2, Lcom/android/camera/DisplayDevice;->FILE_NAME_FORMAT:Ljava/lang/String;

    const-string v0, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_1
    return-object v0

    .line 479
    :catch_0
    move-exception v1

    iget-object v0, p0, Lcom/android/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    goto :goto_1
.end method
