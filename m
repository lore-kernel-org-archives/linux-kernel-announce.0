Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D213A8EA
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 17:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702490139;
	bh=756qokIwU8oWteCtA/8fmgWaH5+WrA4tZDx8F2ezwmM=;
	h=Subject:From:To:Date:From;
	b=Y7cearIqj59sms4RDm8pHRu4El09pLh2ZtzfFCZ+sF6FW/S+jiG/cUOtDm8YXIVV2
	 ly5xY5/wFMPiRFb06bkFVWX9qWLPsBOzeDlMct93pIzI1GWhniVGTUywUekMQAkFPc
	 iayNRlsvcF5PUFXD1ItIYm00WBt6guVUWAdQQ5y8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CF6C433CB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 17:55:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6F660C4314C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 17:55:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.143 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 13 Dec 2023 17:55:38 +0000
Message-Id: <20231213175538.release-5.15.143@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.143
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.143.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.143.xz

Linux kernel version 5.15.143 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.143.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.143.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.143.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.143/v5.15.142

