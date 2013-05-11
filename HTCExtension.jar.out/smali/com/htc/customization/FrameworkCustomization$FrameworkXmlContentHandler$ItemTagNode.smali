.class Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;
.super Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;
.source "FrameworkCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemTagNode"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->this$1:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 511
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    if-nez p2, :cond_0

    .line 513
    const-string p2, "string"

    .line 516
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 521
    const-string v0, "boolean"

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->translateToTrueFalse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 525
    :cond_0
    iput-object p1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->value:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public translateToTrueFalse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 535
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "true"

    .line 546
    :goto_0
    return-object v0

    .line 539
    :cond_0
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    const-string v0, "true"

    goto :goto_0

    .line 543
    :cond_1
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    const-string v0, "true"

    goto :goto_0

    .line 546
    :cond_2
    const-string v0, "false"

    goto :goto_0
.end method
