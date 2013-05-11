.class public final Lcom/htc/opensense/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final info_primary:I

.field public static final list_primary:I

.field public static final list_secondary:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/htc/opensense/R$color;->get_list_primary()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$color;->list_primary:I

    .line 316
    invoke-static {}, Lcom/htc/opensense/R$color;->get_list_secondary()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$color;->list_secondary:I

    .line 317
    invoke-static {}, Lcom/htc/opensense/R$color;->get_info_primary()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$color;->info_primary:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final get_info_primary()I
    .locals 1

    .prologue
    .line 328
    const v0, 0x206007e

    return v0
.end method

.method private static final get_list_primary()I
    .locals 1

    .prologue
    .line 320
    const v0, 0x206008c

    return v0
.end method

.method private static final get_list_secondary()I
    .locals 1

    .prologue
    .line 324
    const v0, 0x206008e

    return v0
.end method
