Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D7413A3ED
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720163744; cv=none; b=cPhWxrDZx6nEa6jnsy03D7A4PFfjky7LKR6LC4H0bLaCOJU+SCBUI5oeZ+6qsdw0rfLOLri9i2DqTw2vCbMDHAkOqkpwqkKiVyZ+GFA3hi7oIo6awngomip1D2PAEZwA1Bokb8mUg7ytpuM2qYdtvf/AryJNJvYYcRJ7Z8EcIIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720163744; c=relaxed/simple;
	bh=xib8JA4c3cVeEKMPgUq/LjW+jlfVHU2uEn23KwUiqSQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HTW0e1saRTTT+HEcwDz9HkACzRDM2oJhSp+OYjzXJCD5TQrl8ZSgj+d94WrGT2MyKXQ8gZSsQ96/u9ZWFr8lxwfupU/MMRYSmmrEz8XgIovnSiKost/XojycyB1T0KSKmltm+neXtINx7RehYv9mq2WSCsh2j7CnxdjekKQcuys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720163744;
	bh=xib8JA4c3cVeEKMPgUq/LjW+jlfVHU2uEn23KwUiqSQ=;
	h=Subject:From:To:Date:From;
	b=NlZjLi3lBsQBbq3DKXYxna5mHc5g/erwGxnkvBfff4J3V2oxgi1mClC/l6BsfRQXS
	 C5MFb+1XmNQS9W9rKapvp7/oDLYJkzkSWSk9HDpz1p4jfE+GiOFSzfxUiGoJ3ISy5q
	 YOKTpp60p8NVewZ0pJFjoCnqFJEm6pKikDW/X4wU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC1EBC32786
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:15:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id DAABCC433A2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jul 2024 07:15:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.317 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jul 2024 07:15:43 +0000
Message-Id: <20240705071543.release-4.19.317@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.317
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.317.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.317.xz

Linux kernel version 4.19.317 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.317.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.317.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.317.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.317/v4.19.316

