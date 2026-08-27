Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98285346FA1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787836300; cv=none; b=d+50MeIU2+drHAPLtXg37yxLN130vOdyHcA4jrs9iSUg5hbQO/YvNTzE1mgoLA45bxb2GZC7A9zfbSiZ+mU+Nr8iUm5poU2N+HzyIKPXHqyWRbOHLRwPZFnLX8SRbjy/2uAnZdFTPY/cXH/cOxqt/1kOuxkWnV7QYyqkeT6ZqWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787836300; c=relaxed/simple;
	bh=a26vQi9QT/RG9vH+jzkIjSQL03CXVNvE9jRg9kisrbc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qBJXRPA5laLbyUxPRlaYst+RP37TXt+gJXvEFTXVqvyCVP5ZeqsL5WiRllLAsMH/qNmky1X8JO/RBIRwQnT77Ekdzk1Y2LdH2wIeOJdgTESQyDTZyj8Vy146OIHgXXkzsk8LDHjXDWphoAaJPQS61lPD5sBFGBTF1TjHvvgscVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787836300;
	bh=a26vQi9QT/RG9vH+jzkIjSQL03CXVNvE9jRg9kisrbc=;
	h=Subject:From:To:Date:From;
	b=irdTYuzljb31ccPZwU7OOEKMXO1KqkF868TfpKbPZxCI+HV+bu1c6Z/UgpSdREoDv
	 iPkofSFJ3p/WlRPbKxQ/v0Nmhpo9DADWkA8K/OEYRifqjLAjK9y/4myoeBnYX1LUi1
	 bdiFjeyyNcq0X726rv3LG2EIJoIGfzxZcr9DeSEs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 396C91F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:11:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 197A53809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:10:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 13:10:27 +0000
Message-Id: <20260827131027.release-7.1.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.11.xz

Linux kernel version 7.1.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.11/v7.1.10

