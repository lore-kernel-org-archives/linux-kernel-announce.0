Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF103EFFA6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792067734; cv=none; b=EMiQCQJ6wK4z/ATCfZCZztOoPcy7YKN7CyxnV6xgFkvHnH2vAnPqr+RLo0cXHAoUjrulBDo0cF3RMhaUoNMBM6CIbJDkhndnVJd85Hu84tQWuuY6PqlTHeExri7xBh7Dl91/15NZsK8L2kmlg0eBkEkfuGc3/FuWcnvf7GxUGHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792067734; c=relaxed/simple;
	bh=7X3hg6uec0sjf1gchHI8UIO3f0X4Dw97hld1nazHoiU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SmxGhUIpYZ0hbxVub2eNK2AIT4VMxckVLg7COdCRYn+4Mw9FTp6+0FdO4RW3qCOpnT9XqOQkijDfHRLpUAeRQyPoXc95aMXW1Ui8VP3YAPOLsvN6X+weP7Zh1FMDNwy7ptO7DB+LVFEztW9t+hxKFINfqsKmEZNPDnRLRjuoQ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792067734;
	bh=7X3hg6uec0sjf1gchHI8UIO3f0X4Dw97hld1nazHoiU=;
	h=Subject:From:To:Date:From;
	b=tvLqVOuXSPhgztFSUrAHaF99yYo7uQA8wxdi+xzxNgp0Ym2+wfULXJ2RvWqt+PN3M
	 KelN86EsEeul8Wtq04ClGLyxOohFXwq3zKK5P/QcZ9glf4iaXLKz/uqJIeJ4+Oi08s
	 Eweu7OJe6lsurFvPG8iFmqSgjQanUzl1wRI1FOhM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89DAB1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:35:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7A08A392EA6D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:35:33 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.159 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 12:35:32 +0000
Message-Id: <20261015123532.release-6.6.159@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.159
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.159.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.159.xz

Linux kernel version 6.6.159 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.159.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.159.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.159.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.159/v6.6.158

