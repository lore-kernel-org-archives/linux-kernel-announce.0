Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F191802B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 18:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705342245;
	bh=FGdlGRNB61f2ggHgRApyph8NOTQz+4UYv0JYzqJyimg=;
	h=Subject:From:To:Date:From;
	b=PD3120UPk+M3Vc0EJnFBMFHwj7t8V4akDZFWik5zHORyEgozNlLS1qkVJQdjK795y
	 ykAtpcev6AUEQ/an4X4HOEReN3Vk0hk8C6eJuyBPOP9/Z8llM4x2weiMOWHxHB20+H
	 burGdhcEg3uPfqBptWzHEhseUBNsJLdw+OE/0xWM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CA3C433F1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 18:10:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C5D41D8C984
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 18:10:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.147 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jan 2024 18:10:44 +0000
Message-Id: <20240115181044.release-5.15.147@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.147
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.147.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.147.xz

Linux kernel version 5.15.147 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.147.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.147.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.147.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.147/v5.15.146

