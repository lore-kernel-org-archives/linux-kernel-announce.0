Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD49F205E2B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740144309; cv=none; b=GwwfsIfqLiC8YgvkHObRFgog/hQpy6PVRZWaYsLCkSLvJJ8+fqAPf1taK2V6bUTwQdjzuMRf52i8DpzCyUMOHNmYpZ+vNTmHK3FPKRTbTsV6+KYJ1DeFFt0KEdSo2kqcR7uEBKhB7FZKQ3JESMmOTs9XQhw5QhLk/5IJXPw5fno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740144309; c=relaxed/simple;
	bh=OVusP1zsxcxT39YFQ2P1swPI5Y6p5ttrwGInAbV/nRk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kuJHJng0uXkRbCyLsIt4aqAIs3WiiyCM++5RKS00HVfv3NhEyN2Po2IYcLjPeQYQ/gMR21hfG82FMRoUmzImvJ4TWleue6VG/trS2Tt8NVVLoA8ySEdjVn8TuMianaXQbs8nIvcfE2keiGj32KgEpqqSy8V9QKgHemjzI5Do/E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740144309;
	bh=OVusP1zsxcxT39YFQ2P1swPI5Y6p5ttrwGInAbV/nRk=;
	h=Subject:From:To:Date:From;
	b=uSQ9N43U/nWlR02vOMEqVqUJwVnoJ3SM85SqiVu0hRCagwt7/lwjj/twhwErOV1/W
	 p2QjdukpwNJThRJpNcTbvh4krA/pux5BmybiOYvBoNIrpmSTtZA2DkFjKtuhZc9Rz3
	 KDTgAPaGw4RhnEfvfdxso5B+l/94aHdzZ+JeaGn4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EEBDC4CEE2
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:25:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7472A3804CAF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:25:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.16 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Feb 2025 13:25:39 +0000
Message-Id: <20250221132539.release-6.12.16@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.16
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.16.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.16.xz

Linux kernel version 6.12.16 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.16.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.16.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.16.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.16/v6.12.15

