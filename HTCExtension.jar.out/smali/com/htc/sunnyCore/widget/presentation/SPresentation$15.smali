.class synthetic Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$sunnyCore$widget$presentation$SPresentation$INTERPOLATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2326
    invoke-static {}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->values()[Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;->$SwitchMap$com$htc$sunnyCore$widget$presentation$SPresentation$INTERPOLATE:[I

    :try_start_0
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;->$SwitchMap$com$htc$sunnyCore$widget$presentation$SPresentation$INTERPOLATE:[I

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;->$SwitchMap$com$htc$sunnyCore$widget$presentation$SPresentation$INTERPOLATE:[I

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;->$SwitchMap$com$htc$sunnyCore$widget$presentation$SPresentation$INTERPOLATE:[I

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
