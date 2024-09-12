Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688F319F40E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134657; cv=none; b=gnf0PBI2j+0+3QjoRIlbcRo3rvs91CDhw9Eg1h9O9S4rYwQwqaXDhvrmqYYsbDGMEG+7FGOeOXx0zl9iRW7zMV6NT1o0BA3Ccbez+ahnpr9DpRaqdS+TAhy320jW6v/bSDl5RNtynFU72D7W67xv5L8dEE/KxV3SC4wbjpy780U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134657; c=relaxed/simple;
	bh=bucmw35fqbHl9uRwtDXL/f8+Pmts4MEvn+l19TcQLrE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=g7LL1ZvxVSc2x+F7WZ40lAsp/LL2HUij8QvF08ZBSVau84Z0gQ03uQ3gQKYzgGZdql5lWP5Ou9HFnbgN5Iz5AQJ/Oky+a4eitidRmQerWW+zPQKCVlaM64OWfoayYi4Pf3eLmLz7oNCNppJ8upNRvziyL8652o16QnifB0uoZWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726134657;
	bh=bucmw35fqbHl9uRwtDXL/f8+Pmts4MEvn+l19TcQLrE=;
	h=Subject:From:To:Date:From;
	b=RjZseDl8UgQJZCj2is5313RMGB0203MfUM6gHV5QzGsRHalHM7WgBS3zXf4zjN4lP
	 pZ8ldXHZxXp5Q+2+43FoND2kQUOl01Ei6fWMiQAo92mqZWZIV9CDVimtvpB8lZl1SV
	 uUbFbeJnEd14mIQEud0vL6edke0SdpnXk5TUYeBI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ACA6C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70B5E3806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:59 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.167 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Sep 2024 09:50:58 +0000
Message-Id: <20240912095058.release-5.15.167@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.167
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.167.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.167.xz

Linux kernel version 5.15.167 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.167.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.167.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.167.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.167/v5.15.166

