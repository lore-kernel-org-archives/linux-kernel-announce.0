Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B5D21A1E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 Dec 2023 10:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702288842;
	bh=t4I7vZ8mih3Y46/0HIAYfOD7JJmXp22fy3AaLGyvsfU=;
	h=Subject:From:To:Date:From;
	b=PPgqX3T5ZRTnUfVPGPBnLEPauq+cCspIHFrkN9yLkf57om9Yilu5xcoTkH7Crx7kk
	 QSPB0481NVNVol72LfKcaSQ1NhU+Fj1ljqypTByQ4iWkJ2drR6C1qOww2uahmHsDIq
	 QWcFsNbi6mnxjICAjJEQgyMReTJl3zagGkRolQYw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD52FC433C7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 Dec 2023 10:00:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 99BBDDFC908
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 Dec 2023 10:00:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.67 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 11 Dec 2023 10:00:41 +0000
Message-Id: <20231211100041.release-6.1.67@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.67
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.67.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.67.xz

Linux kernel version 6.1.67 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.67.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.67.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.67.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.67/v6.1.66

