Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332CD220F35
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754039428; cv=none; b=sRh4Un1pgr4JJvyH8hILCdrkQcWCZkOJNjrHeq5C53dsDuj376NvaUMQddYCVl2crbyX5KLTeCP3eDzvvQaBnS2CvMfu6SOH7VYuTqs5Meu9eP6mNOi0G1UAYT7zJJ4IUUyvC0zYLQ8DDTTowO8xlGAzW6ujeiI7iNckOexzHfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754039428; c=relaxed/simple;
	bh=bHgvdPVa8diDuLG+gjYk8R03jqVuCgsz07GGSfWWF8E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=C7vyp1/l18bY4gQkYKMIVqAllMgslDtbpmz4CT5u0RLCwkiiSDSuMEs0hBHq9kbta7pLT1/lH+4279iyhB3CiAiAJ7v0RRl8y97gxUv0teVz7lpGjDFGK7/98CdskhNdKwdb29oW3Vk3XaDsUBexZ3PCma7FHmgqSgAEMKjXoN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1754039428;
	bh=bHgvdPVa8diDuLG+gjYk8R03jqVuCgsz07GGSfWWF8E=;
	h=Subject:From:To:Date:From;
	b=F1q7jNf+x1FCepmWJV4bc4tC6uvV3JkB0QUvM0YGVRHq7U27Kqu0WGBuxEocFKLcO
	 dGpSIOTKQImfuByHezQkWjfKwjQS7Lp5WdVkJCQz/lsTrbDWVbJr3f7EYvGCSEJGEf
	 LGZ3U3t3/0EZeVHpm7422UP4c/8EjgAun/3PobX4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EA25C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:10:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADEB5383BF56
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Aug 2025 09:10:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.101 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Aug 2025 09:10:43 +0000
Message-Id: <20250801091043.release-6.6.101@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.101
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.101.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.101.xz

Linux kernel version 6.6.101 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.101.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.101.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.101.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.101/v6.6.100

