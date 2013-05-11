.class public Lcom/olaworks/define/Ola_ReturnType;
.super Ljava/lang/Object;
.source "Ola_ReturnType.java"


# static fields
.field public static final OLA_ERROR_ALREADY_EXISTS:I = -0x14

.field public static final OLA_ERROR_BUFFER_OVERFLOW:I = -0x6

.field public static final OLA_ERROR_DB:I = -0x12c

.field public static final OLA_ERROR_DUPLICATED:I = -0x15

.field public static final OLA_ERROR_FILE_NOT_FOUND:I = -0x65

.field public static final OLA_ERROR_GENERAL:I = -0x1

.field public static final OLA_ERROR_INTERRUPTED:I = -0x5

.field public static final OLA_ERROR_INVALID_ARGUMENT:I = -0x4

.field public static final OLA_ERROR_INVALID_STATUS:I = -0x7

.field public static final OLA_ERROR_INVALID_UID:I = -0x1e

.field public static final OLA_ERROR_IO:I = -0x64

.field public static final OLA_ERROR_MMC_NOT_INSTALLED:I = -0x82

.field public static final OLA_ERROR_NOMEM:I = -0xc8

.field public static final OLA_ERROR_NOT_REGISTERED:I = -0x1f

.field public static final OLA_ERROR_NOT_SUPPORTED:I = -0x2

.field public static final OLA_ERROR_NO_FACES:I = -0x8

.field public static final OLA_ERROR_NULL_POINTER:I = -0x3

.field public static final OLA_ERROR_TOO_MANY_FACES:I = -0xd

.field public static final OLA_ERROR_TOO_MANY_PERSONS:I = -0xf

.field public static final OLA_ERROR_TOO_MANY_PHOTOS:I = -0xc

.field public static final OLA_ERROR_TOO_MANY_PLACES:I = -0xe

.field public static final OLA_ERROR_TOO_MANY_TAGS:I = -0xb

.field public static final OLA_SUCCESS:I = 0x0

.field public static final USER_ERROR_BROKEN_DATA:I = -0x1f4

.field public static final USER_ERROR_WRONG_FUNCTION:I = -0x1f5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetErrorString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Not Defined Error number"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "success"

    goto :goto_0

    :sswitch_1
    const-string v0, "error_general"

    goto :goto_0

    :sswitch_2
    const-string v0, "error_not_supported"

    goto :goto_0

    :sswitch_3
    const-string v0, "error_null_pointer"

    goto :goto_0

    :sswitch_4
    const-string v0, "error_invalid_argument"

    goto :goto_0

    :sswitch_5
    const-string v0, "error_interrupted"

    goto :goto_0

    :sswitch_6
    const-string v0, "error_buffer_overflow"

    goto :goto_0

    :sswitch_7
    const-string v0, "error_invalid_status"

    goto :goto_0

    :sswitch_8
    const-string v0, "error_no_faces"

    goto :goto_0

    :sswitch_9
    const-string v0, "error_too_many_tags"

    goto :goto_0

    :sswitch_a
    const-string v0, "error_too_many_photos"

    goto :goto_0

    :sswitch_b
    const-string v0, "error_too_many_faces"

    goto :goto_0

    :sswitch_c
    const-string v0, "error_too_many_places"

    goto :goto_0

    :sswitch_d
    const-string v0, "error_too_many_persons"

    goto :goto_0

    :sswitch_e
    const-string v0, "error_already_exists"

    goto :goto_0

    :sswitch_f
    const-string v0, "error_duplicated"

    goto :goto_0

    :sswitch_10
    const-string v0, "error_invalid_uid"

    goto :goto_0

    :sswitch_11
    const-string v0, "error_not_registered"

    goto :goto_0

    :sswitch_12
    const-string v0, "error_io"

    goto :goto_0

    :sswitch_13
    const-string v0, "error_file_not_found"

    goto :goto_0

    :sswitch_14
    const-string v0, "error_mmc_not_installed"

    goto :goto_0

    :sswitch_15
    const-string v0, "error_nomem"

    goto :goto_0

    :sswitch_16
    const-string v0, "error_db"

    goto :goto_0

    :sswitch_17
    const-string v0, "error_broken_data"

    goto :goto_0

    :sswitch_18
    const-string v0, "error_wrong_function"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f5 -> :sswitch_18
        -0x1f4 -> :sswitch_17
        -0x12c -> :sswitch_16
        -0xc8 -> :sswitch_15
        -0x82 -> :sswitch_14
        -0x65 -> :sswitch_13
        -0x64 -> :sswitch_12
        -0x1f -> :sswitch_11
        -0x1e -> :sswitch_10
        -0x15 -> :sswitch_f
        -0x14 -> :sswitch_e
        -0xf -> :sswitch_d
        -0xe -> :sswitch_c
        -0xd -> :sswitch_b
        -0xc -> :sswitch_a
        -0xb -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static error(I)Z
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static success(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
