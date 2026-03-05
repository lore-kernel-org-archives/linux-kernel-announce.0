Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7036A3BED5F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772724919; cv=none; b=Ze7rIKjS1oIZUVVPs6/Lr2vjnHY5TqT8WS5Nr9tkc4jsTb+Z58VTqNi8OlXvg2/jFa1Y5Hlq9u0jAOJ7rTI+/O/V6SiqMlub0YKruoHi4mhLnvCJA8x1a2ZRjKZfz0W+WNhuf0PHDXUw8Rjib5tifiBKTM0KFvdN3jiJGvFqq7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772724919; c=relaxed/simple;
	bh=bF/3Gi7bYorZi8SxdwIIlAejGLgns4L7zrHXjb4ugs4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Yj1stRuUjU8jgxX6kgCu2BSQwDOjtX7un6P9c0ex2EQ8HuQEP8c3/Wwea96mGB1JGj0tZrlkCwNk0MzlHJM4HLRCIXIOh6GRHtu4pfMJ2YPOepKf92iQShGOHVTbe3+EboaoR8Uki1OVoh6xFptXFR04ekneu9FJmIxXebpgDbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772724919;
	bh=bF/3Gi7bYorZi8SxdwIIlAejGLgns4L7zrHXjb4ugs4=;
	h=Subject:From:To:Date:From;
	b=BdkXL5s3HEMU2VavjcyW9b/JH3FK+x8opvNVkQg2WXMKw9AsN2dm4C3vp+cv/m+bs
	 J914adXwafa4zyYoVSZokh+XTAPg1srs4xyuxNrZRh+GldF6ufmPoH3fD1iPiv6hU9
	 RetQUdyoeg21QG7K7I7uMM8gVngYtyOgaEMX4DaI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19665C2BC9E
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:35:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42BD43808200
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:35:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.76 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 05 Mar 2026 15:35:18 +0000
Message-Id: <20260305153518.release-6.12.76@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.76
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.76.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.76.xz

Linux kernel version 6.12.76 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.76.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.76.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.76.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.76/v6.12.75

