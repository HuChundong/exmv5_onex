.class final Lcom/android/camera/io/DCFUtility$2;
.super Ljava/lang/Object;
.source "DCFUtility.java"

# interfaces
.implements Lcom/android/camera/io/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/io/DCFUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    check-cast p2, [Ljava/lang/Object;

    move-object v8, p2

    check-cast v8, [Ljava/lang/Object;

    aget-object v2, v8, v11

    check-cast v2, Lcom/android/camera/io/DCFInfo;

    aget-object v9, v8, v10

    check-cast v9, [I

    move-object v7, v9

    check-cast v7, [I

    invoke-virtual {v2}, Lcom/android/camera/io/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move v9, v10

    :goto_0
    return v9

    :cond_1
    move v1, v6

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    if-ne v1, v6, :cond_4

    move v9, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    aget v9, v7, v11

    if-le v0, v9, :cond_5

    iget v9, v2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v0, v9, :cond_5

    aput v0, v7, v11

    iget v9, v2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-ne v0, v9, :cond_5

    move v9, v11

    goto :goto_0

    :catch_0
    move-exception v3

    move v9, v10

    goto :goto_0

    :cond_5
    move v9, v10

    goto :goto_0
.end method
