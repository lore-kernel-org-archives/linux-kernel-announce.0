Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4990368D6B
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 05:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786081861; cv=none; b=AfLUbaqi5Vi1lxauxxiiOLVAe7xhIm/b/5zxqBlsgfLHXUWV5TLynZ+1otiUFaUTmsXo/eZwOdSaUlqNULD4qOjfU1yEmTWaVTXdYamdMYU/cqMBsgeqO7SoOQKo3ys+VKgEssrSRSFfVoEFxzXe4RjHKDeDwaFtKdFGezc6Os8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786081861; c=relaxed/simple;
	bh=KDkcbWGWD/eQ0dH4+Z0cCIZOqpArDx4z2htuqkEKOFk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DYBNqoCtiBtIGYQnsPJALjqqK3tuWLdyeYGnFN8cB7wWAt6tnUUNhdxIPX6hN5fjeJM56MjekZ6CB9R6SQCWx/d/jau0gD0e3Iqmf2ofwYId+Z8a1BL1pEe87YKd74D+IXuS3aKmiqYAjWPwCT2YdM6EWYrm8SKLP188Q5v2RRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786081861;
	bh=KDkcbWGWD/eQ0dH4+Z0cCIZOqpArDx4z2htuqkEKOFk=;
	h=Subject:From:To:Date:From;
	b=hjhSHEldFZBHfN++e4lK4yz5rBajl3ZBUTZpzfPWAiEeD/lh9za9hj1OvgAyItX3E
	 Q1TszVrbCqwul3Mu17QJqC7FmKy/AGNNUa1Eg/4OnWGedUne0yTzg3jAtsETy0lt2e
	 SKyEkRFjL+YeP9NL9Al6+OoZRbF6m5Lg/+zGaDNY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F5031F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 05:51:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 965E4380A95E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 05:50:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.102 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Aug 2026 05:50:19 +0000
Message-Id: <20260807055019.release-6.12.102@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.102
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.102.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.102.xz

Linux kernel version 6.12.102 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.102.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.102.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.102.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.102/v6.12.101

