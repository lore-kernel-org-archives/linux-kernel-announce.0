Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A80322FD58B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752771320; cv=none; b=CjIg15JSc37Fj3UjB7HwOXYulzZ6gBE6KYtYtN4zIQoPhgOj4kbhU9RuLJu5U+n95GEHYbRKrCWYCezehgw7NBOVr9m28oNfNAS/zT6ZzEAWI7zdSmghYIOimWV+S7COFZ1nkN3onP5e3Pz4+pd3lfgYanyPV8GbQ/f2F2ZybIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752771320; c=relaxed/simple;
	bh=g4HfDmSh8ZwCJn4RZI4TT7v+BXIjp88KrmQ3AsUpgCk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=pPq0Rz/62rzkF+AMWVeOfgtLwKfVHHgPGb4D97TBbxvcAul8qqnxSBHajCXUu7oehu/4VF4NQ0EJw3pkMNISejXULi7W7201E3hKccRtwxFcG66A56sDhB4b1pUa3okd3sk5Vl+IDLZ2hFQEY2dKzTfqiL0uaLsvkMTwV0Y6sbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752771320;
	bh=g4HfDmSh8ZwCJn4RZI4TT7v+BXIjp88KrmQ3AsUpgCk=;
	h=Subject:From:To:Date:From;
	b=l8L9anrW5oqhxuDiYUdL32tZ+rF4pdo9wzNE6IeXVeV7VSNOJgQzCoeDLXx9cKD7X
	 3vdS/ZNzhGqZdaDy6fyFBLv5K6xxG2D/OvPa1/hcA//7cYL9GJeumejHC+BaJKKcAY
	 /4x9Bq6icJS2MjZKeuhhQaaa2ThZEy94B7/fVBro=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36BF1C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:55:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70BC7383BF47
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:55:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.189 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 16:55:40 +0000
Message-Id: <20250717165540.release-5.15.189@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.189
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.189.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.189.xz

Linux kernel version 5.15.189 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.189.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.189.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.189.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.189/v5.15.188

