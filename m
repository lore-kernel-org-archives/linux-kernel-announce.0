Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26C5133402
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709737850; cv=none; b=R0QUKf+Yk69EClVpENrX9VR18mam7HLVXK07DvncVNZXwsA14baAxECOzKAmKq+PsKZ8baEPOoTflub08ABmiad3aEAXZAt00NOsaP+5wCb97/gC8EaTIqWcioGCkvIOcZXG0UHSUppK5upE5az7V85dFOLSAA1LfYg61C8FciM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709737850; c=relaxed/simple;
	bh=qGuAYl7ELhCPKctPHIgzZYDmYPlkGy/sixtmlpggTCg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qlEV0BbG3EWI7jnEjbLNFyaXX8ywsH3srS6BdjPttSukxcnB33hspLh7hVoCwRBslEAX6HtaV7uOIkhaELHPrh0hsh1/wi47GxpAvNZWWWS6PJYJHTtbTcpV3pdZgo0sa9CNJKBokZTjn5EbUDTnFLw/8WnaqVn0QCPQRjPPdLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709737850;
	bh=qGuAYl7ELhCPKctPHIgzZYDmYPlkGy/sixtmlpggTCg=;
	h=Subject:From:To:Date:From;
	b=Hpte7P4oetz+c87/T818qYTTRRCS2kcLfsgqxZYWlAqdRkXVgp76tBhJpOxrPJF3c
	 loAM3uYzUYhGvwdWxbhTTjA+dP2/Tvxoqs3Vu4o8iVybm1BXRPMi+7/2WdYOfNqd7F
	 XLIdvirvdwkq9EryrpJVBArV9oXZcWEyyfuzD6ME=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722DDC433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:10:50 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 59D57D9A4B5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:10:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.21 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 15:10:50 +0000
Message-Id: <20240306151050.release-6.6.21@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.21
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.21.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.21.xz

Linux kernel version 6.6.21 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.21.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.21.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.21.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.21/v6.6.20

