.class public final Lcom/htc/opensense/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final avatar:I

.field public static final content:I

.field public static final image:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final message_container:I

.field public static final name:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final subcontent:I

.field public static final subcontent_ext:I

.field public static final txt_1x1:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/opensense/R$id;->get_content()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->content:I

    .line 19
    invoke-static {}, Lcom/htc/opensense/R$id;->get_subcontent()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->subcontent:I

    .line 20
    invoke-static {}, Lcom/htc/opensense/R$id;->get_subcontent_ext()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->subcontent_ext:I

    .line 26
    invoke-static {}, Lcom/htc/opensense/R$id;->get_txt_1x1()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->txt_1x1:I

    .line 32
    invoke-static {}, Lcom/htc/opensense/R$id;->get_image()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->image:I

    .line 38
    invoke-static {}, Lcom/htc/opensense/R$id;->get_name()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->name:I

    .line 39
    invoke-static {}, Lcom/htc/opensense/R$id;->get_avatar()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->avatar:I

    .line 40
    invoke-static {}, Lcom/htc/opensense/R$id;->get_message_container()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->message_container:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final get_avatar()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x20200cf

    return v0
.end method

.method private static final get_content()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x20200d0

    return v0
.end method

.method private static final get_image()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x20200c8

    return v0
.end method

.method private static final get_message_container()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x20200ce

    return v0
.end method

.method private static final get_name()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x2020064

    return v0
.end method

.method private static final get_subcontent()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x20200d1

    return v0
.end method

.method private static final get_subcontent_ext()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x20200d2

    return v0
.end method

.method private static final get_txt_1x1()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x20200c5

    return v0
.end method
