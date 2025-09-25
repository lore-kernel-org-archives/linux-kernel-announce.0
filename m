Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6E228468C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792941; cv=none; b=E8ycjXNMo3P/8qyzjQvB3IRWPYnjp6q8M0LqAAxtk2sWSJhecnXqsY8qVSYCOmC/1W8CAc6/sgT5HbJMlk0pLxjtH3nfH5uzdlAN7lLpjWEFyqvCEQWtW92XS8dnZpvDNLKzGQlle2Q2qpoWLC4hMjjiVkWP1n2y3pDEM7k2d7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792941; c=relaxed/simple;
	bh=6QYohty/k9eV2G0GEmFQaE9UQoUD8npdHAvzJPsIQDA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M6qHhEpPH/+A4pD7LDB8X0bhGC8qt2GQ6MDr8td5Xf9uH1ktTXT6OWhHUkrVXqRBWM3LaChYBDj42Sqv1sTjDRs3Y2TdovI04iuaT66Ko045QTh6o1IbcNuK3zZYcE9a0WzEiIhm+t0muOCNX/Ibh5D0Xf2dkOe9keso0DOGif0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758792941;
	bh=6QYohty/k9eV2G0GEmFQaE9UQoUD8npdHAvzJPsIQDA=;
	h=Subject:From:To:Date:From;
	b=YCpQS1bH+LYtBNbuSp7AHvSLABeHPbij/FsaX6B4vblxEE1m6soL56csRDMl3jT1y
	 0GWFq/ZKboC2gH9hx8cIZ8Ibe0oD/NtU/PwiBq7hfZAJJLma2HrGAvAartpQqusV4f
	 eT/2NZc+vzM+XTc8ccVFnjsaLxEzEc6HaOLEs8MA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E54E8C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:35:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3789D39D0C9B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Sep 2025 09:35:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Sep 2025 09:35:36 +0000
Message-Id: <20250925093536.release-6.16.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.9.xz

Linux kernel version 6.16.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.9/v6.16.8

