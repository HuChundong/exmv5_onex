.class final Lcom/android/camera/io/DCFUtility$3;
.super Ljava/lang/Object;
.source "DCFUtility.java"

# interfaces
.implements Lcom/android/camera/io/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/io/DCFUtility;->getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dirNameLength:I

.field final synthetic val$dirNameSuffixLength:I

.field final synthetic val$dirSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirNameLength:I

    iput p2, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirNameSuffixLength:I

    iput-object p3, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirSuffix:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    const/16 v7, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirNameLength:I

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget v3, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirNameLength:I

    iget v6, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirNameSuffixLength:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirNameLength:I

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/io/DCFUtility$3;->val$dirSuffix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    if-ltz v0, :cond_2

    if-gt v0, v7, :cond_2

    mul-int/lit8 v1, v0, 0x64

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    if-ltz v0, :cond_3

    if-gt v0, v7, :cond_3

    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v3, -0x30

    if-ltz v0, :cond_4

    if-gt v0, v7, :cond_4

    add-int/2addr v1, v0

    check-cast p2, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x3e7

    if-ne v1, v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0
.end method
