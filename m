Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E45380FEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781871329; cv=none; b=pIGiS9ltWS2QMif6TTflys2y9es7vevhDABrkINKkNL+XG2e64K5tQEHJIFm4/3fT+31GCv97XhZVfQNjlYsgZrifEsG6B3w+nOIcExCyLcvR4zRD8byz7wqKnNZrhtUeuA8/oNYMFP+BYRIa+wp/Faa7xiRxpUk6Yastohxg4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781871329; c=relaxed/simple;
	bh=78s1XbIRI3he7NnetdSTg9ymOqSmto03FSU6FtnuBjg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dIU3PnA3074gVgM2meymAof2XOptUzY/hebfADWfaL36Ivyx2459APlW9vNN5DLOoQAO1obYKNRP/oIb+rX9xbXd9SK0ACxgHgQ35Ob0AYuPUQ5SgfLR0uD9sXUPLA0T6U5TTzcssjIUfuZNSY0tztrG/kGRbMUj3s9qP0K2FCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781871328;
	bh=78s1XbIRI3he7NnetdSTg9ymOqSmto03FSU6FtnuBjg=;
	h=Subject:From:To:Date:From;
	b=Lqo17i8Bapsfr7wKAVeqTljX876LynNjB/cbwhuCogE5NC1y/sx2SFz1wW5Dbu1va
	 kmbmLp4rwOf6bzCUb2HG6PzrZ0YROGmEyTugIl2fsfpmNxeIXQX9xET/TLHEiRhv1X
	 5yEXx1TYAGZxcZP5pqgjLpXk3YXHuNKe15i7jXGE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF7EB1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:15:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 199663AA6A58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:15:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 12:15:19 +0000
Message-Id: <20260619121519.release-7.0.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.13.xz

Linux kernel version 7.0.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.13/v7.0.12

